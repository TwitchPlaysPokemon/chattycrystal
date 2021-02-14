; Pics are defined in gfx/pics.asm

	dba EggPic ; EGG is now -3, so it must go *above* the label
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
PokemonPicPointers::
; entries correspond to Pokémon species, two apiece (first index is 0)
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dba BulbasaurFrontpic
	dba BulbasaurBackpic
	dba IvysaurFrontpic
	dba IvysaurBackpic
	dba VenusaurFrontpic
	dba VenusaurBackpic
	dba CharmanderFrontpic
	dba CharmanderBackpic
	dba CharmeleonFrontpic
	dba CharmeleonBackpic
	dba CharizardFrontpic
	dba CharizardBackpic
	dba SquirtleFrontpic
	dba SquirtleBackpic
	dba WartortleFrontpic
	dba WartortleBackpic
	dba BlastoiseFrontpic
	dba BlastoiseBackpic
	dba CaterpieFrontpic
	dba CaterpieBackpic
	dba MetapodFrontpic
	dba MetapodBackpic
	dba ButterfreeFrontpic
	dba ButterfreeBackpic
	dba WeedleFrontpic
	dba WeedleBackpic
	dba KakunaFrontpic
	dba KakunaBackpic
	dba BeedrillFrontpic
	dba BeedrillBackpic
	dba PidgeyFrontpic
	dba PidgeyBackpic
	dba PidgeottoFrontpic
	dba PidgeottoBackpic
	dba PidgeotFrontpic
	dba PidgeotBackpic
	dba RattataFrontpic
	dba RattataBackpic
	dba RaticateFrontpic
	dba RaticateBackpic
	dba SpearowFrontpic
	dba SpearowBackpic
	dba FearowFrontpic
	dba FearowBackpic
	dba EkansFrontpic
	dba EkansBackpic
	dba ArbokFrontpic
	dba ArbokBackpic
	dba PikachuFrontpic
	dba PikachuBackpic
	dba RaichuFrontpic
	dba RaichuBackpic
	dba SandshrewFrontpic
	dba SandshrewBackpic
	dba SandslashFrontpic
	dba SandslashBackpic
	dba NidoranFFrontpic
	dba NidoranFBackpic
	dba NidorinaFrontpic
	dba NidorinaBackpic
	dba NidoqueenFrontpic
	dba NidoqueenBackpic
	dba NidoranMFrontpic
	dba NidoranMBackpic
	dba NidorinoFrontpic
	dba NidorinoBackpic
	dba NidokingFrontpic
	dba NidokingBackpic
	dba ClefairyFrontpic
	dba ClefairyBackpic
	dba ClefableFrontpic
	dba ClefableBackpic
	dba VulpixFrontpic
	dba VulpixBackpic
	dba NinetalesFrontpic
	dba NinetalesBackpic
	dba JigglypuffFrontpic
	dba JigglypuffBackpic
	dba WigglytuffFrontpic
	dba WigglytuffBackpic
	dba ZubatFrontpic
	dba ZubatBackpic
	dba GolbatFrontpic
	dba GolbatBackpic
	dba OddishFrontpic
	dba OddishBackpic
	dba GloomFrontpic
	dba GloomBackpic
	dba VileplumeFrontpic
	dba VileplumeBackpic
	dba ParasFrontpic
	dba ParasBackpic
	dba ParasectFrontpic
	dba ParasectBackpic
	dba VenonatFrontpic
	dba VenonatBackpic
	dba VenomothFrontpic
	dba VenomothBackpic
	dba DiglettFrontpic
	dba DiglettBackpic
	dba DugtrioFrontpic
	dba DugtrioBackpic
	dba MeowthFrontpic
	dba MeowthBackpic
	dba PersianFrontpic
	dba PersianBackpic
	dba PsyduckFrontpic
	dba PsyduckBackpic
	dba GolduckFrontpic
	dba GolduckBackpic
	dba MankeyFrontpic
	dba MankeyBackpic
	dba PrimeapeFrontpic
	dba PrimeapeBackpic
	dba GrowlitheFrontpic
	dba GrowlitheBackpic
	dba ArcanineFrontpic
	dba ArcanineBackpic
	dba PoliwagFrontpic
	dba PoliwagBackpic
	dba PoliwhirlFrontpic
	dba PoliwhirlBackpic
	dba PoliwrathFrontpic
	dba PoliwrathBackpic
	dba AbraFrontpic
	dba AbraBackpic
	dba KadabraFrontpic
	dba KadabraBackpic
	dba AlakazamFrontpic
	dba AlakazamBackpic
	dba MachopFrontpic
	dba MachopBackpic
	dba MachokeFrontpic
	dba MachokeBackpic
	dba MachampFrontpic
	dba MachampBackpic
	dba BellsproutFrontpic
	dba BellsproutBackpic
	dba WeepinbellFrontpic
	dba WeepinbellBackpic
	dba VictreebelFrontpic
	dba VictreebelBackpic
	dba TentacoolFrontpic
	dba TentacoolBackpic
	dba TentacruelFrontpic
	dba TentacruelBackpic
	dba GeodudeFrontpic
	dba GeodudeBackpic
	dba GravelerFrontpic
	dba GravelerBackpic
	dba GolemFrontpic
	dba GolemBackpic
	dba PonytaFrontpic
	dba PonytaBackpic
	dba RapidashFrontpic
	dba RapidashBackpic
	dba SlowpokeFrontpic
	dba SlowpokeBackpic
	dba SlowbroFrontpic
	dba SlowbroBackpic
	dba MagnemiteFrontpic
	dba MagnemiteBackpic
	dba MagnetonFrontpic
	dba MagnetonBackpic
	dba FarfetchDFrontpic
	dba FarfetchDBackpic
	dba DoduoFrontpic
	dba DoduoBackpic
	dba DodrioFrontpic
	dba DodrioBackpic
	dba SeelFrontpic
	dba SeelBackpic
	dba DewgongFrontpic
	dba DewgongBackpic
	dba GrimerFrontpic
	dba GrimerBackpic
	dba MukFrontpic
	dba MukBackpic
	dba ShellderFrontpic
	dba ShellderBackpic
	dba CloysterFrontpic
	dba CloysterBackpic
	dba GastlyFrontpic
	dba GastlyBackpic
	dba HaunterFrontpic
	dba HaunterBackpic
	dba GengarFrontpic
	dba GengarBackpic
	dba OnixFrontpic
	dba OnixBackpic
	dba DrowzeeFrontpic
	dba DrowzeeBackpic
	dba HypnoFrontpic
	dba HypnoBackpic
	dba KrabbyFrontpic
	dba KrabbyBackpic
	dba KinglerFrontpic
	dba KinglerBackpic
	dba VoltorbFrontpic
	dba VoltorbBackpic
	dba ElectrodeFrontpic
	dba ElectrodeBackpic
	dba ExeggcuteFrontpic
	dba ExeggcuteBackpic
	dba ExeggutorFrontpic
	dba ExeggutorBackpic
	dba CuboneFrontpic
	dba CuboneBackpic
	dba MarowakFrontpic
	dba MarowakBackpic
	dba HitmonleeFrontpic
	dba HitmonleeBackpic
	dba HitmonchanFrontpic
	dba HitmonchanBackpic
	dba LickitungFrontpic
	dba LickitungBackpic
	dba KoffingFrontpic
	dba KoffingBackpic
	dba WeezingFrontpic
	dba WeezingBackpic
	dba RhyhornFrontpic
	dba RhyhornBackpic
	dba RhydonFrontpic
	dba RhydonBackpic
	dba ChanseyFrontpic
	dba ChanseyBackpic
	dba TangelaFrontpic
	dba TangelaBackpic
	dba KangaskhanFrontpic
	dba KangaskhanBackpic
	dba HorseaFrontpic
	dba HorseaBackpic
	dba SeadraFrontpic
	dba SeadraBackpic
	dba GoldeenFrontpic
	dba GoldeenBackpic
	dba SeakingFrontpic
	dba SeakingBackpic
	dba StaryuFrontpic
	dba StaryuBackpic
	dba StarmieFrontpic
	dba StarmieBackpic
	dba MrMimeFrontpic
	dba MrMimeBackpic
	dba ScytherFrontpic
	dba ScytherBackpic
	dba JynxFrontpic
	dba JynxBackpic
	dba ElectabuzzFrontpic
	dba ElectabuzzBackpic
	dba MagmarFrontpic
	dba MagmarBackpic
	dba PinsirFrontpic
	dba PinsirBackpic
	dba TaurosFrontpic
	dba TaurosBackpic
	dba MagikarpFrontpic
	dba MagikarpBackpic
	dba GyaradosFrontpic
	dba GyaradosBackpic
	dba LaprasFrontpic
	dba LaprasBackpic
	dba DittoFrontpic
	dba DittoBackpic
	dba EeveeFrontpic
	dba EeveeBackpic
	dba VaporeonFrontpic
	dba VaporeonBackpic
	dba JolteonFrontpic
	dba JolteonBackpic
	dba FlareonFrontpic
	dba FlareonBackpic
	dba PorygonFrontpic
	dba PorygonBackpic
	dba OmanyteFrontpic
	dba OmanyteBackpic
	dba OmastarFrontpic
	dba OmastarBackpic
	dba KabutoFrontpic
	dba KabutoBackpic
	dba KabutopsFrontpic
	dba KabutopsBackpic
	dba AerodactylFrontpic
	dba AerodactylBackpic
	dba SnorlaxFrontpic
	dba SnorlaxBackpic
	dba ArticunoFrontpic
	dba ArticunoBackpic
	dba ZapdosFrontpic
	dba ZapdosBackpic
	dba MoltresFrontpic
	dba MoltresBackpic
	dba DratiniFrontpic
	dba DratiniBackpic
	dba DragonairFrontpic
	dba DragonairBackpic
	dba DragoniteFrontpic
	dba DragoniteBackpic
	dba MewtwoFrontpic
	dba MewtwoBackpic
	dba MewFrontpic
	dba MewBackpic
	dba ChikoritaFrontpic
	dba ChikoritaBackpic
	dba BayleefFrontpic
	dba BayleefBackpic
	dba MeganiumFrontpic
	dba MeganiumBackpic
	dba CyndaquilFrontpic
	dba CyndaquilBackpic
	dba QuilavaFrontpic
	dba QuilavaBackpic
	dba TyphlosionFrontpic
	dba TyphlosionBackpic
	dba TotodileFrontpic
	dba TotodileBackpic
	dba CroconawFrontpic
	dba CroconawBackpic
	dba FeraligatrFrontpic
	dba FeraligatrBackpic
	dba SentretFrontpic
	dba SentretBackpic
	dba FurretFrontpic
	dba FurretBackpic
	dba HoothootFrontpic
	dba HoothootBackpic
	dba NoctowlFrontpic
	dba NoctowlBackpic
	dba LedybaFrontpic
	dba LedybaBackpic
	dba LedianFrontpic
	dba LedianBackpic
	dba SpinarakFrontpic
	dba SpinarakBackpic
	dba AriadosFrontpic
	dba AriadosBackpic
	dba CrobatFrontpic
	dba CrobatBackpic
	dba ChinchouFrontpic
	dba ChinchouBackpic
	dba LanturnFrontpic
	dba LanturnBackpic
	dba PichuFrontpic
	dba PichuBackpic
	dba CleffaFrontpic
	dba CleffaBackpic
	dba IgglybuffFrontpic
	dba IgglybuffBackpic
	dba TogepiFrontpic
	dba TogepiBackpic
	dba TogeticFrontpic
	dba TogeticBackpic
	dba NatuFrontpic
	dba NatuBackpic
	dba XatuFrontpic
	dba XatuBackpic
	dba MareepFrontpic
	dba MareepBackpic
	dba FlaaffyFrontpic
	dba FlaaffyBackpic
	dba AmpharosFrontpic
	dba AmpharosBackpic
	dba BellossomFrontpic
	dba BellossomBackpic
	dba MarillFrontpic
	dba MarillBackpic
	dba AzumarillFrontpic
	dba AzumarillBackpic
	dba SudowoodoFrontpic
	dba SudowoodoBackpic
	dba PolitoedFrontpic
	dba PolitoedBackpic
	dba HoppipFrontpic
	dba HoppipBackpic
	dba SkiploomFrontpic
	dba SkiploomBackpic
	dba JumpluffFrontpic
	dba JumpluffBackpic
	dba AipomFrontpic
	dba AipomBackpic
	dba SunkernFrontpic
	dba SunkernBackpic
	dba SunfloraFrontpic
	dba SunfloraBackpic
	dba YanmaFrontpic
	dba YanmaBackpic
	dba WooperFrontpic
	dba WooperBackpic
	dba QuagsireFrontpic
	dba QuagsireBackpic
	dba EspeonFrontpic
	dba EspeonBackpic
	dba UmbreonFrontpic
	dba UmbreonBackpic
	dba MurkrowFrontpic
	dba MurkrowBackpic
	dba SlowkingFrontpic
	dba SlowkingBackpic
	dba MisdreavusFrontpic
	dba MisdreavusBackpic
	dbw -1, -1 ; Unown pics have their own table. See UnownPicPointers
	dbw -1, -1
	dba WobbuffetFrontpic
	dba WobbuffetBackpic
	dba GirafarigFrontpic
	dba GirafarigBackpic
	dba PinecoFrontpic
	dba PinecoBackpic
	dba ForretressFrontpic
	dba ForretressBackpic
	dba DunsparceFrontpic
	dba DunsparceBackpic
	dba GligarFrontpic
	dba GligarBackpic
	dba SteelixFrontpic
	dba SteelixBackpic
	dba SnubbullFrontpic
	dba SnubbullBackpic
	dba GranbullFrontpic
	dba GranbullBackpic
	dba QwilfishFrontpic
	dba QwilfishBackpic
	dba ScizorFrontpic
	dba ScizorBackpic
	dba ShuckleFrontpic
	dba ShuckleBackpic
	dba HeracrossFrontpic
	dba HeracrossBackpic
	dba SneaselFrontpic
	dba SneaselBackpic
	dba TeddiursaFrontpic
	dba TeddiursaBackpic
	dba UrsaringFrontpic
	dba UrsaringBackpic
	dba SlugmaFrontpic
	dba SlugmaBackpic
	dba MagcargoFrontpic
	dba MagcargoBackpic
	dba SwinubFrontpic
	dba SwinubBackpic
	dba PiloswineFrontpic
	dba PiloswineBackpic
	dba CorsolaFrontpic
	dba CorsolaBackpic
	dba RemoraidFrontpic
	dba RemoraidBackpic
	dba OctilleryFrontpic
	dba OctilleryBackpic
	dba DelibirdFrontpic
	dba DelibirdBackpic
	dba MantineFrontpic
	dba MantineBackpic
	dba SkarmoryFrontpic
	dba SkarmoryBackpic
	dba HoundourFrontpic
	dba HoundourBackpic
	dba HoundoomFrontpic
	dba HoundoomBackpic
	dba KingdraFrontpic
	dba KingdraBackpic
	dba PhanpyFrontpic
	dba PhanpyBackpic
	dba DonphanFrontpic
	dba DonphanBackpic
	dba Porygon2Frontpic
	dba Porygon2Backpic
	dba StantlerFrontpic
	dba StantlerBackpic
	dba SmeargleFrontpic
	dba SmeargleBackpic
	dba TyrogueFrontpic
	dba TyrogueBackpic
	dba HitmontopFrontpic
	dba HitmontopBackpic
	dba SmoochumFrontpic
	dba SmoochumBackpic
	dba ElekidFrontpic
	dba ElekidBackpic
	dba MagbyFrontpic
	dba MagbyBackpic
	dba MiltankFrontpic
	dba MiltankBackpic
	dba BlisseyFrontpic
	dba BlisseyBackpic
	dba RaikouFrontpic
	dba RaikouBackpic
	dba EnteiFrontpic
	dba EnteiBackpic
	dba SuicuneFrontpic
	dba SuicuneBackpic
	dba LarvitarFrontpic
	dba LarvitarBackpic
	dba PupitarFrontpic
	dba PupitarBackpic
	dba TyranitarFrontpic
	dba TyranitarBackpic
	dba LugiaFrontpic
	dba LugiaBackpic
	dba HoOhFrontpic
	dba HoOhBackpic
	dba CelebiFrontpic
	dba CelebiBackpic
	dba TreeckoFrontpic
	dba TreeckoBackpic
	dba GrovyleFrontpic
	dba GrovyleBackpic
	dba SceptileFrontpic
	dba SceptileBackpic
	dba TorchicFrontpic
	dba TorchicBackpic
	dba CombuskenFrontpic
	dba CombuskenBackpic
	dba BlazikenFrontpic
	dba BlazikenBackpic
	dba MudkipFrontpic
	dba MudkipBackpic
	dba MarshtompFrontpic
	dba MarshtompBackpic
	dba SwampertFrontpic
	dba SwampertBackpic
	dba PoochyenaFrontpic
	dba PoochyenaBackpic
	dba MightyenaFrontpic
	dba MightyenaBackpic
	dba ZigzagoonFrontpic
	dba ZigzagoonBackpic
	dba LinooneFrontpic
	dba LinooneBackpic
	dba LotadFrontpic
	dba LotadBackpic
	dba LombreFrontpic
	dba LombreBackpic
	dba LudicoloFrontpic
	dba LudicoloBackpic
	dba TaillowFrontpic
	dba TaillowBackpic
	dba SwellowFrontpic
	dba SwellowBackpic
	dba WingullFrontpic
	dba WingullBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Pelipper
	dba PlaceholderBackpic ; PLACEHOLDER - Pelipper
	dba RaltsFrontpic
	dba RaltsBackpic
	dba KirliaFrontpic
	dba KirliaBackpic
	dba GardevoirFrontpic
	dba GardevoirBackpic
	dba SurskitFrontpic
	dba SurskitBackpic
	dba MasquerainFrontpic
	dba MasquerainBackpic
	dba WhismurFrontpic
	dba WhismurBackpic
	dba LoudredFrontpic
	dba LoudredBackpic
	dba ExploudFrontpic
	dba ExploudBackpic
	dba MakuhitaFrontpic
	dba MakuhitaBackpic
	dba HariyamaFrontpic
	dba HariyamaBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Azurill
	dba PlaceholderBackpic ; PLACEHOLDER - Azurill
	dba SkittyFrontpic ; PLACEHOLDER - Skitty
	dba PlaceholderBackpic ; PLACEHOLDER - Skitty
	dba PlaceholderFrontpic ; PLACEHOLDER - Delcatty
	dba PlaceholderBackpic ; PLACEHOLDER - Delcatty
	dba SableyeFrontpic
	dba SableyeBackpic
	dba AronFrontpic
	dba AronBackpic
	dba LaironFrontpic
	dba LaironBackpic
	dba AggronFrontpic
	dba AggronBackpic
	dba ElectrikeFrontpic
	dba ElectrikeBackpic
	dba ManectricFrontpic
	dba ManectricBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Roselia
	dba PlaceholderBackpic ; PLACEHOLDER - Roselia
	dba WailmerFrontpic
	dba WailmerBackpic
	dba WailordFrontpic
	dba WailordBackpic
	dba TrapinchFrontpic
	dba TrapinchBackpic
	dba VibravaFrontpic
	dba VibravaBackpic
	dba FlygonFrontpic
	dba FlygonBackpic
	dba SwabluFrontpic
	dba SwabluBackpic
	dba AltariaFrontpic
	dba AltariaBackpic
	dba LileepFrontpic
	dba LileepBackpic
	dba CradilyFrontpic
	dba CradilyBackpic
	dba FeebasFrontpic
	dba FeebasBackpic
	dba MiloticFrontpic
	dba MiloticBackpic
	dba DuskullFrontpic
	dba DuskullBackpic
	dba DusclopsFrontpic
	dba DusclopsBackpic
	dba AbsolFrontpic
	dba AbsolBackpic
	dba SnoruntFrontpic
	dba SnoruntBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Spheal
	dba PlaceholderBackpic ; PLACEHOLDER - Spheal
	dba PlaceholderFrontpic ; PLACEHOLDER - Sealeo
	dba PlaceholderBackpic ; PLACEHOLDER - Sealeo
	dba PlaceholderFrontpic ; PLACEHOLDER - Walrein
	dba PlaceholderBackpic ; PLACEHOLDER - Walrein
	dba BagonFrontpic
	dba BagonBackpic
	dba ShelgonFrontpic
	dba ShelgonBackpic
	dba SalamenceFrontpic
	dba SalamenceBackpic
	dba BeldumFrontpic
	dba BeldumBackpic
	dba MetangFrontpic
	dba MetangBackpic
	dba MetagrossFrontpic
	dba MetagrossBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Latias
	dba PlaceholderBackpic ; PLACEHOLDER - Latias
	dba PlaceholderFrontpic ; PLACEHOLDER - Latios
	dba PlaceholderBackpic ; PLACEHOLDER - Latios
	dba GroudonFrontpic
	dba GroudonBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Turtwig
	dba PlaceholderBackpic ; PLACEHOLDER - Turtwig
	dba GrotleFrontpic 
	dba PlaceholderBackpic ; PLACEHOLDER - Grotle
	dba PlaceholderFrontpic ; PLACEHOLDER - Torterra
	dba PlaceholderBackpic ; PLACEHOLDER - Torterra
	dba PlaceholderFrontpic ; PLACEHOLDER - Chimchar
	dba PlaceholderBackpic ; PLACEHOLDER - Chimchar
	dba PlaceholderFrontpic ; PLACEHOLDER - Monferno
	dba PlaceholderBackpic ; PLACEHOLDER - Monferno
	dba PlaceholderFrontpic ; PLACEHOLDER - Infernape
	dba PlaceholderBackpic ; PLACEHOLDER - Infernape
	dba PlaceholderFrontpic ; PLACEHOLDER - Piplup
	dba PlaceholderBackpic ; PLACEHOLDER - Piplup
	dba PlaceholderFrontpic ; PLACEHOLDER - Prinplup
	dba PlaceholderBackpic ; PLACEHOLDER - Prinplup
	dba PlaceholderFrontpic ; PLACEHOLDER - Empoleon
	dba PlaceholderBackpic ; PLACEHOLDER - Empoleon
	dba PlaceholderFrontpic ; PLACEHOLDER - Bidoof
	dba PlaceholderBackpic ; PLACEHOLDER - Bidoof
	dba PlaceholderFrontpic ; PLACEHOLDER - Bibarel
	dba PlaceholderBackpic ; PLACEHOLDER - Bibarel
	dba ShinxFrontpic
	dba ShinxBackpic
	dba LuxioFrontpic
	dba LuxioBackpic
	dba LuxrayFrontpic
	dba LuxrayBackpic
	dba BudewFrontpic
	dba PlaceholderBackpic ; PLACEHOLDER - Budew
	dba PlaceholderFrontpic ; PLACEHOLDER - Roserade
	dba PlaceholderBackpic ; PLACEHOLDER - Roserade
	dba PlaceholderFrontpic ; PLACEHOLDER - Burmy
	dba PlaceholderBackpic ; PLACEHOLDER - Burmy
	dba PlaceholderFrontpic ; PLACEHOLDER - Mothim
	dba PlaceholderBackpic ; PLACEHOLDER - Mothim
	dba PlaceholderFrontpic ; PLACEHOLDER - Buizel
	dba PlaceholderBackpic ; PLACEHOLDER - Buizel
	dba PlaceholderFrontpic ; PLACEHOLDER - Floatzel
	dba PlaceholderBackpic ; PLACEHOLDER - Floatzel
	dba PlaceholderFrontpic ; PLACEHOLDER - Shellos
	dba PlaceholderBackpic ; PLACEHOLDER - Shellos
	dba PlaceholderFrontpic ; PLACEHOLDER - Gastrodon
	dba PlaceholderBackpic ; PLACEHOLDER - Gastrodon
	dba BunearyFrontpic
	dba BunearyBackpic
	dba LopunnyFrontpic
	dba LopunnyBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Stunky
	dba PlaceholderBackpic ; PLACEHOLDER - Stunky
	dba PlaceholderFrontpic ; PLACEHOLDER - Skuntank
	dba PlaceholderBackpic ; PLACEHOLDER - Skuntank
	dba BronzorFrontpic
	dba BronzorBackpic
	dba BronzongFrontpic
	dba BronzongBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Bonsly
	dba PlaceholderBackpic ; PLACEHOLDER - Bonsly
	dba ChatotFrontpic
	dba ChatotBackpic
	dba CroagunkFrontpic
	dba PlaceholderBackpic ; PLACEHOLDER - Croagunk
	dba PlaceholderFrontpic ; PLACEHOLDER - Toxicroak
	dba PlaceholderBackpic ; PLACEHOLDER - Toxicroak
	dba LeafeonFrontpic
	dba LeafeonBackpic
	dba GlaceonFrontpic
	dba GlaceonBackpic
	dba PorygonZFrontpic
	dba PorygonZBackpic
	dba DusknoirFrontpic
	dba DusknoirBackpic
	dba FroslassFrontpic
	dba FroslassBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Darkrai
	dba PlaceholderBackpic ; PLACEHOLDER - Darkrai
	dba PlaceholderFrontpic ; PLACEHOLDER - Pansage
	dba PlaceholderBackpic ; PLACEHOLDER - Pansage
	dba PlaceholderFrontpic ; PLACEHOLDER - Simisage
	dba PlaceholderBackpic ; PLACEHOLDER - Simisage
	dba PlaceholderFrontpic ; PLACEHOLDER - Drillbur
	dba PlaceholderBackpic ; PLACEHOLDER - Drillbur
	dba PlaceholderFrontpic ; PLACEHOLDER - Excadrill
	dba PlaceholderBackpic ; PLACEHOLDER - Excadrill
	dba PlaceholderFrontpic ; PLACEHOLDER - Sandile
	dba PlaceholderBackpic ; PLACEHOLDER - Sandile
	dba PlaceholderFrontpic ; PLACEHOLDER - Krokorok
	dba PlaceholderBackpic ; PLACEHOLDER - Krokorok
	dba PlaceholderFrontpic ; PLACEHOLDER - Krookodile
	dba PlaceholderBackpic ; PLACEHOLDER - Krookodile
	dba PlaceholderFrontpic ; PLACEHOLDER - Ducklett
	dba PlaceholderBackpic ; PLACEHOLDER - Ducklett
	dba PlaceholderFrontpic ; PLACEHOLDER - Swanna
	dba PlaceholderBackpic ; PLACEHOLDER - Swanna
	dba PlaceholderFrontpic ; PLACEHOLDER - Tynamo
	dba PlaceholderBackpic ; PLACEHOLDER - Tynamo
	dba PlaceholderFrontpic ; PLACEHOLDER - Eelektrik
	dba PlaceholderBackpic ; PLACEHOLDER - Eelektrik
	dba PlaceholderFrontpic ; PLACEHOLDER - Eelektross
	dba PlaceholderBackpic ; PLACEHOLDER - Eelektross
	dba PlaceholderFrontpic ; PLACEHOLDER - Litwick
	dba PlaceholderBackpic ; PLACEHOLDER - Litwick
	dba PlaceholderFrontpic ; PLACEHOLDER - Lampent
	dba PlaceholderBackpic ; PLACEHOLDER - Lampent
	dba PlaceholderFrontpic ; PLACEHOLDER - Chandelure
	dba PlaceholderBackpic ; PLACEHOLDER - Chandelure
	dba PlaceholderFrontpic ; PLACEHOLDER - Clauncher
	dba PlaceholderBackpic ; PLACEHOLDER - Clauncher
	dba PlaceholderFrontpic ; PLACEHOLDER - Clawtizer
	dba PlaceholderBackpic ; PLACEHOLDER - Clawtizer
	dba PlaceholderFrontpic ; PLACEHOLDER - Helioptile
	dba PlaceholderBackpic ; PLACEHOLDER - Helioptile
	dba PlaceholderFrontpic ; PLACEHOLDER - Heliolisk
	dba PlaceholderBackpic ; PLACEHOLDER - Heliolisk
	dba PlaceholderFrontpic ; PLACEHOLDER - Amaura
	dba PlaceholderBackpic ; PLACEHOLDER - Amaura
	dba PlaceholderFrontpic ; PLACEHOLDER - Aurorus
	dba PlaceholderBackpic ; PLACEHOLDER - Aurorus
	dba SylveonFrontpic
	dba SylveonBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Goomy
	dba PlaceholderBackpic ; PLACEHOLDER - Goomy
	dba PlaceholderFrontpic ; PLACEHOLDER - Sligoo
	dba PlaceholderBackpic ; PLACEHOLDER - Sligoo
	dba PlaceholderFrontpic ; PLACEHOLDER - Goodra
	dba PlaceholderBackpic ; PLACEHOLDER - Goodra
	dba PlaceholderFrontpic ; PLACEHOLDER - Crabrawler
	dba PlaceholderBackpic ; PLACEHOLDER - Crabrawler
	dba PlaceholderFrontpic ; PLACEHOLDER - Crabominable
	dba PlaceholderBackpic ; PLACEHOLDER - Crabominable
	dba PlaceholderFrontpic ; PLACEHOLDER - Cutiefly
	dba PlaceholderBackpic ; PLACEHOLDER - Cutiefly
	dba PlaceholderFrontpic ; PLACEHOLDER - Ribombee
	dba PlaceholderBackpic ; PLACEHOLDER - Ribombee
	dba PlaceholderFrontpic ; PLACEHOLDER - Onixtret
	dba PlaceholderBackpic ; PLACEHOLDER - Onixtret
	dba PlaceholderFrontpic ; PLACEHOLDER - Chiquirtle
	dba PlaceholderBackpic ; PLACEHOLDER - Chiquirtle
	dba PlaceholderFrontpic ; PLACEHOLDER - Baytortle
	dba PlaceholderBackpic ; PLACEHOLDER - Baytortle
	dba MegastoiseFrontpic
	dba MegastoiseBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Hootduo
	dba PlaceholderBackpic ; PLACEHOLDER - Hootduo
	dba NoctdrioFrontpic
	dba NoctdrioBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Togekey
	dba PlaceholderBackpic ; PLACEHOLDER - Togekey
	dba TogetapeFrontpic
	dba TogetapeBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Hopporita
	dba PlaceholderBackpic ; PLACEHOLDER - Hopporita
	dba PlaceholderFrontpic ; PLACEHOLDER - Skipleef
	dba PlaceholderBackpic ; PLACEHOLDER - Skipleef
	dba JumpaniumFrontpic
	dba JumpaniumBackpic
	dba PlaceholderFrontpic ; PLACEHOLDER - Woochum
	dba PlaceholderBackpic ; PLACEHOLDER - Woochum
	dba QuagynxFrontpic
	dba QuagynxBackpic
	dba SteelurretFrontpic
	dba SteelurretBackpic
	dba PhanceroFrontpic
	dba PhanceroBackpic
