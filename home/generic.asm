; Generic small amounts of data used in many places in the game.

; GenericDummyFunction, BattleAnim_Dummy and TX_ENDText are in low.asm instead

EllipsisSilenceText:: ; just in case we change the host text to something else
HostSilenceText::
	text "<...>"
	done

ActivateRockets::
	ifequal 7, ActivateRockets_RadioTowerRockets
	ifequal 6, ActivateRockets_GoldenrodRockets
GenericDummyScript::
	end

ActivateRockets_GoldenrodRockets:
	jumpstd goldenrodrockets

ActivateRockets_RadioTowerRockets:
	jumpstd radiotowerrockets

GenericTextStart::
	text_start
	done
