; Generic small amounts of data used in many places in the game.

; GenericDummyFunction, BattleAnim_Dummy and TX_ENDText are in low.asm instead

GenericDummyScript::
	end

EllipsisSilenceText:: ; just in case we change the host text to something else
HostSilenceText::
	text "<...>"
	done

ActivateRockets::
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd goldenrodrockets

.RadioTowerRockets:
	jumpstd radiotowerrockets
