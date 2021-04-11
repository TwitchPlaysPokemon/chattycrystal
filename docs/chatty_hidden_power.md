# Chatty Hidden Power

The very first Pokémon that the player receives has a special move that cannot be obtained elsewhere. While it is
named Hidden Power, just like another pre-existing move, and it uses the same animation, the effect is significantly
different. The move also has its type declared as ??? (instead of Normal) to make this difference visible.

The game itself contains a description of the move's characteristics that is good enough for most players. This
document exists for those who will inevitably want to know the details behind the implementation.

The move's behavior with the controller active is **not** described here. That is complex and needs fine-tuning to
adapt the values to the context of the chat, and it is not what most players will experience while playing on their
own.

* [Button presses](#button-presses)
* [Power](#power)
* [Type](#type)
* [Link battles and enemy trainers](#link-battles-and-enemy-trainers)

## Button presses

The move's characteristics are determined by the buttons pressed by the player while the move's animation plays. This
is the reason why the move's animation will play even with animations off.

While the move animation is playing, the game will record all buttons pressed by the player; the number of times each
button was pressed will determine the move's attributes. Note that this might result in the move having a type that
will not hit the opposing Pokémon due to type immunity; if this is the case, the immunity message will be displayed
**after** the move's animation finished playing. This is different from all other moves in the game, and a consequence
of the fact that the move's type is not known until after the move animation is finished and the button presses have
been counted.

## Power

The move's power is determined by the total number of button presses recorded while the move animation plays; all
eight buttons are added up for this purpose. The number of button presses is capped at 60 for this purpose.

The power calculation also depends on the number of Johto gym badges the player has. The exact formula is:

    power = buttons * (badges + 2) / 4

This value is rounded to the nearest integer. The move will always have at least 20 power, even if the calculation
results in a smaller value. As a result of this calculation, the maximum possible power is 150.

## Type

The move's type is determined by which buttons are pressed the most. For this purpose, the buttons are ranked from
most pressed to least pressed; ties are broken at random. The START and SELECT buttons are ignored for this ranking;
while they do contribute to the total number of presses (and thus to the move's power), they do not affect its type.
Note that if the player presses no buttons while the move animation plays, all buttons will have a count of zero and
thus will be randomly sorted by the tie-breaking algorithm.

The exact type is determined by which three buttons are the most pressed. The order between those three doesn't
matter; only which three are the most pressed will determine the move's type. For example, if the top three buttons
are any D-Pad direections, the move will be Dragon-type. All other combinations of the A and B buttons and the D-Pad
directions are assigned unique types; since there are 16 such combinations and 16 types to assign (not counting
Normal, which cannot be a Hidden Power type, and Dragon, which is already assigned to the D-Pad only combinations),
every possible type is covered by exactly one button combination. The full list of button combinations can be seen in
game or [in the source](data/moves/chatty_hidden_power_type.asm).

## Link battles and enemy trainers

When an enemy trainer uses this move, determining the move's type and power based on button inputs would allow the
player to sabotage the enemy. Also, during link battles, each end cannot see the other end's button presses, and the
only data exchanged by link peers is the move selection itself. As a result, a different method of determining the
move's type and power is needed.

The move's type is left unchanged, and thus it is always ???-type. This type has been set to hit every Pokémon super
effectively, but without doubling the weakness for dual-type Pokémon. (This way, both mono-type and dual-type Pokémon
will take 2× damage.) The move's power is simply set to the attacker's level plus 20, which ensures that the move is
scaled appropriately and enforces the same minimum power of 20 that the usual method has.
