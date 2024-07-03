const string Ninja_MoreWeapons_Version = "MoreWeapons 1.0";

/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_MoreWeapons_Init() {
    // Init Ikarus&Lego
    LeGo_MergeFlags(LeGo_PermMem);
    
    MEM_Info(ConcatStrings(ConcatStrings("Initialize ", Ninja_MoreWeapons_Version), "."));
    MEM_Info(ConcatStrings(Ninja_MoreWeapons_Version, " was initialized successfully."));
};
