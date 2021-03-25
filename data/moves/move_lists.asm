; Various move lists used by the battle effects code.

CriticalHitMoves:
	dw AEROBLAST
	dw AIR_CUTTER
	dw ATTACK_ORDER
	dw BLAZE_KICK
	dw CRABHAMMER
	dw CROSS_CHOP
	dw KARATE_CHOP
	dw LEAF_BLADE
	dw NIGHT_SLASH
	dw PSYCHO_CUT
	dw RAZOR_LEAF
	dw RAZOR_WIND
	dw SKY_ATTACK
	dw SLASH
	dw STONE_EDGE
	dw DRILL_RUN
	dw -1

MetronomeExcepts:
	dw COUNTER
	dw DESTINY_BOND
	dw DETECT
	dw ENDURE
	dw METRONOME
	dw MIMIC
	dw MIRROR_COAT
	dw PROTECT
	dw SKETCH
	dw SLEEP_TALK
	dw STRUGGLE
	dw THIEF
	dw -1

AssistExcepts:
	dw ASSIST
	dw CHATTER
	dw COUNTER
	dw COVET
	dw DESTINY_BOND
	dw DETECT
	dw DIG
	dw DIVE
	dw ENDURE
	dw FLY
	dw METRONOME
	dw MIMIC
	dw MIRROR_COAT
	dw MIRROR_MOVE
	dw PROTECT
	dw ROAR
	dw SKETCH
	dw SLEEP_TALK
	dw SNATCH
	dw STRUGGLE
	dw THIEF
	dw TRANSFORM
	dw WHIRLWIND
	dw -1

ChatterExcepts:
; Doesn't include status moves (which Chatter ignores anyway).
	dw COUNTER
	dw COVET
	dw EXPLOSION
	dw MIRROR_COAT
	dw PSYWAVE
	dw SELFDESTRUCT
	dw STRUGGLE
	dw THIEF
	dw -1

SleepBypassMoves:
	dw SLEEP_TALK
	dw SNORE
	dw -1

ThawingMoves:
	dw FLAME_WHEEL
	dw SACRED_FIRE
	dw SCALD
	dw -1

SemiInvulnerableMoves:
	dw DIG
	dw DIVE
	dw FLY
	dw -1

FlyHitMoves:
	dw GUST
	dw WHIRLWIND
	dw THUNDER
	dw TWISTER
	dw -1

DigHitMoves:
	dw EARTHQUAKE
	dw FISSURE
	dw MAGNITUDE
	dw -1

DiveHitMoves:
	dw SURF
	dw WHIRLPOOL
	dw -1

NoEncoreMoves:
	dw NO_MOVE
	dw ENCORE
	dw MIRROR_MOVE
	dw STRUGGLE
	dw -1
