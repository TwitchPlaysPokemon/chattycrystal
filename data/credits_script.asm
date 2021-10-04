CreditsScript:

; Clear the banner.
	db CREDITS_CLEAR

; Pokemon Crystal Version Staff
	db                STAFF, 1

	db CREDITS_WAIT, 8

; Play the credits music.
	db CREDITS_MUSIC

	db CREDITS_WAIT2, 10

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 0 ; Pichu

	db             DIRECTOR, 1
	db       SATOSHI_TAJIRI, 2

	db CREDITS_WAIT, 8

	db           CODIRECTOR, 1
	db       JUNICHI_MASUDA, 2

	db CREDITS_WAIT, 8

	db          PROGRAMMERS, 0
	db       SOUSUKE_TAMADA, 1
	db       HISASHI_SOGABE, 2
	db         KEITA_KAGAYA, 3
	db    YOSHINORI_MATSUDA, 4

	db CREDITS_WAIT, 8

	db          PROGRAMMERS, 0
	db     SHIGEKI_MORIMOTO, 1
	db     TETSUYA_WATANABE, 2
	db        TAKENORI_OOTA, 3

	db CREDITS_WAIT, 8

	db    GRAPHICS_DIRECTOR, 1
	db         KEN_SUGIMORI, 2

	db CREDITS_WAIT, 8

	db       MONSTER_DESIGN, 0
	db         KEN_SUGIMORI, 1
	db    MOTOFUMI_FUJIWARA, 2
	db     SHIGEKI_MORIMOTO, 3
	db     HIRONOBU_YOSHIDA, 4
	db         SATOSHI_OOTA, 5

	db CREDITS_WAIT, 8

	db       MONSTER_DESIGN, 0
	db       ATSUKO_NISHIDA, 1
	db          MUNEO_SAITO, 2
	db       RENA_YOSHIKAWA, 3

	db CREDITS_WAIT, 8

	db    POKEMON_ANIMATION, 1
	db     HIRONOBU_YOSHIDA, 2
	db          JUN_OKUTANI, 3

	db CREDITS_WAIT, 8

; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 1 ; Smoochum

	db      GRAPHICS_DESIGN, 0
	db     HIRONOBU_YOSHIDA, 1
	db          JUN_OKUTANI, 2
	db       ASUKA_IWASHITA, 3
	db     TETSUYA_WATANABE, 4

	db CREDITS_WAIT, 8

	db         CREDIT_MUSIC, 0
	db       JUNICHI_MASUDA, 1
	db        MORIKAZU_AOKI, 2
	db          GO_ICHINOSE, 3

	db CREDITS_WAIT, 8

	db CREDIT_SOUND_EFFECTS, 0
	db        MORIKAZU_AOKI, 1
	db       JUNICHI_MASUDA, 2
	db     TETSUYA_WATANABE, 3

	db CREDITS_WAIT, 8

	db          GAME_DESIGN, 0
	db       JUNICHI_MASUDA, 1
	db     SHIGEKI_MORIMOTO, 2
	db        KOHJI_NISHINO, 3

	db CREDITS_WAIT, 8

	db          GAME_DESIGN, 0
	db         TETSUJI_OOTA, 1
	db          HITOMI_SATO, 2
	db     KENJI_MATSUSHIMA, 3

	db CREDITS_WAIT, 8

	db        GAME_SCENARIO, 0
	db       JUNICHI_MASUDA, 1
	db        KOHJI_NISHINO, 2
	db  TOSHINOBU_MATSUMIYA, 3
	db     KENJI_MATSUSHIMA, 4

	db CREDITS_WAIT, 8

	db         POKEDEX_TEXT, 1
	db  TOSHINOBU_MATSUMIYA, 2

	db CREDITS_WAIT, 8

	db     TOOL_PROGRAMMING, 1
	db       SOUSUKE_TAMADA, 2
	db        TAKENORI_OOTA, 3

	db CREDITS_WAIT, 8

	db    PARAMETRIC_DESIGN, 1
	db        KOHJI_NISHINO, 2

	db CREDITS_WAIT, 8

; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 2 ; Ditto

	db        SCRIPT_DESIGN, 1
	db         TETSUJI_OOTA, 2
	db        NOBUHIRO_SEYA, 3

	db CREDITS_WAIT, 8

	db      MAP_DATA_DESIGN, 1
	db         TETSUJI_OOTA, 2
	db      KAZUHITO_SEKINE, 3

	db CREDITS_WAIT, 8

	db           MAP_DESIGN, 0
	db         TETSUJI_OOTA, 1
	db        KOHJI_NISHINO, 2
	db        NOBUHIRO_SEYA, 3

	db CREDITS_WAIT, 8

	db         COORDINATION, 1
	db      HIROYUKI_ZINNAI, 2

	db CREDITS_WAIT, 8

	db            PRODUCERS, 0
	db         SATORU_IWATA, 1
	db       SATOSHI_YAMATO, 2
	db     SHIGERU_MIYAMOTO, 3

	db CREDITS_WAIT, 8

	db            PRODUCERS, 1
	db   TSUNEKAZU_ISHIHARA, 2

	db CREDITS_WAIT, 8

; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 3 ; Igglybuff

	db     US_VERSION_STAFF, 2

	db CREDITS_WAIT, 8

	db      US_COORDINATION, 1
	db          GAIL_TILDEN, 2
	db        HIRO_NAKAMURA, 3

	db CREDITS_WAIT, 8

	db      US_COORDINATION, 1
	db       JUNICHI_MASUDA, 2
	db        SETH_MCMAHILL, 3

	db CREDITS_WAIT, 8

	db      US_COORDINATION, 1
	db     HIROTO_ALEXANDER, 2
	db     TERESA_LILLYGREN, 3

	db CREDITS_WAIT, 8

	db     TEXT_TRANSLATION, 1
	db        NOB_OGASAWARA, 2

	db CREDITS_WAIT, 8

	db          PROGRAMMERS, 1
	db      TERUKI_MURAKAWA, 2
	db      KAZUYOSHI_OSAWA, 3

	db CREDITS_WAIT, 8

	db         PAAD_TESTING, 1
	db       THOMAS_HERTZOG, 2
	db         ERIK_JOHNSON, 3

	db CREDITS_WAIT, 8

	db      PRODUCT_TESTING, 0
	db             PLANNING, 1

	db CREDITS_WAIT, 8

	db      PRODUCT_TESTING, 0
	db       KEITA_NAKAMURA, 1
	db      HIROTAKA_UEMURA, 2
	db       HIROAKI_TAMURA, 3
	db    NORIAKI_SAKAGUCHI, 4

	db CREDITS_WAIT, 8

	db      PRODUCT_TESTING, 0
	db NCL_SUPER_MARIO_CLUB, 1
	db          KENJI_SAIKI, 2
	db         ATSUSHI_TADA, 3
	db          MIYUKI_SATO, 4

	db CREDITS_WAIT, 8

	db       SPECIAL_THANKS, 0
	db     KIMIKO_NAKAMICHI, 1
	db           AKITO_MORI, 2

	db CREDITS_WAIT, 8

	db       SPECIAL_THANKS, 0
	db        GAKUZI_NOMOTO, 1
	db           AI_MASHIMA, 2
	db      KUNIMI_KAWAMURA, 3

	db CREDITS_WAIT, 8

	db       SPECIAL_THANKS, 0
	db    MIKIHIRO_ISHIKAWA, 1
	db   HIDEYUKI_HASHIMOTO, 2

	db CREDITS_WAIT, 8

	db   EXECUTIVE_PRODUCER, 1
	db     HIROSHI_YAMAUCHI, 2

	db CREDITS_WAIT, 8

	db CREDITS_CLEAR
	db CREDITS_WAIT, 1

	db        CREDITS_SCENE, 0 ; Pichu

	db          CHATTY_DEVS, 1

	db CREDITS_WAIT, 9

	db        ROM_DEVELOPER, 0
	db          CHAOS_LORD2, 1
	db            RED031000, 2
	db   FROSTED_GEULLEISIA, 3
	db                  AX6, 4

	db CREDITS_WAIT, 9

	db          GAME_ENGINE, 1
	db                  AX6, 2

	db CREDITS_WAIT, 9

	db        BATTLE_ENGINE, 1
	db                  FIQ, 2

	db CREDITS_WAIT, 9

	db      PROCESSING_HELP, 1
	db           PIA_CARROT, 2
	db          FUTURESUSHI, 3

	db CREDITS_WAIT, 8

	db               ARTIST, 0
	db          BLOODLESSNS, 1
	db              KELCYUS, 2
	db              SCARLAX, 3
	db                 NUUK, 4

	db CREDITS_WAIT, 8

	db         CREDIT_MUSIC, 0
	db    MMMMMMMMMMMMMMMMM, 1
	db                 PIGU, 2
	db                  PUM, 3

	db CREDITS_WAIT, 8

	db         CREDIT_MUSIC, 0
	db      FROGGEST_SPIRIT, 1
	db              GRONNOC, 2
	db                 GACT, 3

	db CREDITS_WAIT, 8

	db CREDIT_SOUND_EFFECTS, 1
	db          MONSTARULES, 2
	db            MYRATTATA, 3

	db CREDITS_WAIT, 8

	db            ANIMATION, 0
	db          BLOODLESSNS, 1
	db           SOUPPOTATO, 2
	db            RED031000, 3
	db          RAINBOWDEVS, 4

	db CREDITS_WAIT, 9

	db           MAP_DESIGN, 1
	db              RANGI42, 2

	db CREDITS_WAIT, 8

	db           ROM_TESTER, 1
	db          CHAOS_LORD2, 2
	db   FROSTED_GEULLEISIA, 3

	db CREDITS_WAIT, 9

	db     CHAT_INTEGRATION, 1
	db         AISSURTIEVOS, 2

	db CREDITS_WAIT, 9

	db      DATA_COLLECTION, 1
	db            RAVENDWYR, 2
	db            BEXXXXXXX, 3

	db CREDITS_WAIT, 9

	db          RUN_MANAGER, 1
	db      M4_USED_ROLLOUT, 2

	db CREDITS_WAIT, 9

	db CREDITS_CLEAR
	db CREDITS_WAIT, 1

	db CREDITS_SCENE, 3

	db            COPYRIGHT, 1

	db CREDITS_WAIT, 9


; Display "The End" graphic.
	db CREDITS_THEEND

	db CREDITS_WAIT, 20

	db CREDITS_END
