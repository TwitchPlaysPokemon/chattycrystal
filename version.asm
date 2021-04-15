VERSION_MAJOR EQU 1
VERSION_MINOR EQU 0

; set to a non-zero value to mark the build as a release
RELEASE_NUMBER EQU 2

GAME_TITLE EQUS "TwitchPlaysPokemon's Chatty Crystal"

; do not change anything below this line

if RELEASE_NUMBER
BUILD_LABEL EQUS "v{d:VERSION_MAJOR}.{02d:VERSION_MINOR} release {5d:RELEASE_NUMBER}"
else
; Huge hack because RGBDS (v0.5.0-rc2) defines __UTC_YEAR__ and friends as strings, not numbers.
; They also expand to empty strings if any of the values is zero, so the + 0 at the end makes it work regardless.
___build_year   EQU __UTC_YEAR__ + 0
___build_month  EQU __UTC_MONTH__ + 0
___build_day    EQU __UTC_DAY__ + 0
___build_hour   EQU __UTC_HOUR__ + 0
___build_minute EQU __UTC_MINUTE__ + 0
___build_second EQU __UTC_SECOND__ + 0

BUILD_LABEL EQUS "{04d:___build_year}-{02d:___build_month}-{02d:___build_day} {02d:___build_hour}:{02d:___build_minute}:{02d:___build_second}"
endc

if DEF(PRINTNAME)
	print "{GAME_TITLE} "
	if RELEASE_NUMBER
		print "(v{d:VERSION_MAJOR}.{02d:VERSION_MINOR}, release {d:RELEASE_NUMBER})\n"
	else
		print "(custom build)\n"
	endc
endc
