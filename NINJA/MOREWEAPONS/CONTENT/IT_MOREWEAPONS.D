// ***************
// MY CHANGES
// ***************
// *****************************************************
INSTANCE ItMw_1h_BroadSword_WPPatch (C_Item)
{	
	name 				=	"Kvalitní Široký Meè";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	750;

	damageTotal  		= 	50;
	damagetype 			=	DAM_EDGE;
	range    			=  	80;		

	on_equip			=	Equip_1h_BroadSword_WPPatch;
	on_unequip			=	UnEquip_1h_BroadSword_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	40;
	visual 				=	"new_stl_broadsword.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent.";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_BroadSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_BroadSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_WingedSword_WPPatch (C_Item)
{	
	name 				=	"Okøídllený Meè";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	800;

	damageTotal  		= 	70;
	damagetype 			=	DAM_EDGE;
	range    			=  	75;		

	on_equip			=	Equip_1h_WingedSword_WPPatch;
	on_unequip			=	UnEquip_1h_WingedSword_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	60;
	visual 				=	"new_stl_wingsword.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent.";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_WingedSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_WingedSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_SaiDagger_WPPatch (C_Item)
{	
	name 				=	"Exotická Dýka";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	700;

	damageTotal  		= 	50;
	damagetype 			=	DAM_EDGE;
	range    			=  	55;		

	on_equip			=	Equip_1H_SaiDagger_WPPatch;
	on_unequip			=	UnEquip_1H_SaiDagger_WPPatch;

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	25;
	visual 				=	"new_stl_dagger.3DS";

	description			= name;
	TEXT[0]             =       "+10% Jednoruèní talent.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_SaiDagger_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 10);
};
func void UnEquip_1h_SaiDagger_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -10);
};
INSTANCE ItMw_2h_KnightSword_WPPatch (C_Item)
{	
	name 				=	"Rytíøský Meè";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1000;

	damageTotal  		= 	105;
	damagetype 			=	DAM_EDGE;
	range    			=  	110;		

	on_equip			=	Equip_2h_KnightSword_WPPatch;
	on_unequip			=	UnEquip_2h_KnightSword_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	100;
	visual 				=	"new_stl_claymore.3DS";

	description			= name;
	TEXT[0]             =       "+5% Obouruèní talent.";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_KnightSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
};
func void UnEquip_2h_KnightSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
};
INSTANCE ItMw_2h_BroadSword_WPPatch (C_Item)
{	
	name 				=	"Øezník";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalZweihaender;

	damageTotal  		= 	115;
	damagetype 			=	DAM_EDGE;
	range    			=  	105;		
	
	on_equip			=	Equip_2h_BroadSword_WPPatch;
	on_unequip			=	UnEquip_2h_BroadSword_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	110;
	visual 				=	"new_stl_Mastersword.3DS";

	description			= name;
	TEXT[0]             =       "+5% Obouruèní talent.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_BroadSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
};
func void UnEquip_2h_BroadSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
};
INSTANCE ItMw_2h_MasterSword_WPPatch (C_Item)
{	
	name 				=	"Sekaè";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalZweihaender;

	damageTotal  		= 	145;
	damagetype 			=	DAM_EDGE;
	range    			=  	110;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	140;
	visual 				=	"new_stl_greatsword.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_ExecutionersAxe_WPPatch (C_Item)
{	
	name 				=	"Popravèí Sekera";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalZweihaender;

	damageTotal  		= 	75;
	damagetype 			=	DAM_EDGE;
	range    			=  	110;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	75;
	visual 				=	"new_stl_waraxe.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_HeavySword_WPPatch (C_Item)
{	
	name 				=	"Tìžký Meè";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1300;

	damageTotal  		= 	125;
	damagetype 			=	DAM_EDGE;
	range    			=  	90;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	125;
	visual 				=	"1h_Sword_HeavyWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_DecoratedBastardSword_WPatch (C_Item)
{	
	name 				=	"Zdobený Meè Bastard";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1250;

	damageTotal  		= 	115;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	on_equip			=	Equip_1h_DecoratedBastard_WPatch;
	on_unequip			=	UnEquip_1h_DecoratedBastard_WPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	105;
	visual 				=	"1h_Sword_BastardWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_DecoratedBastard_WPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_DecoratedBastard_WPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_GoodLongSword_WPatch (C_Item)
{	
	name 				=	"Dobrý Dlouhý Meè";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	875;

	damageTotal  		= 	85;
	damagetype 			=	DAM_EDGE;
	range    			=  	90;		

	on_equip			=	Equip_1h_GoodLongSword_WPatch;
	on_unequip			=	UnEquip_1h_GoodLongSword_WPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	80;
	visual 				=	"1h_Sword_LongWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+3% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_GoodLongSword_WPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 3);
};
func void UnEquip_1h_GoodLongSword_WPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -3);
};
INSTANCE ItMw_1h_FightingSword_WPatch (C_Item)
{	
	name 				=	"Bojový Meè";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	875;

	damageTotal  		= 	75;
	damagetype 			=	DAM_EDGE;
	range    			=  	75;		

	on_equip			=	Equip_1h_FightingSword_WPatch;
	on_unequip			=	UnEquip_1h_FightingSword_WPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	65;
	visual 				=	"1h_Pal_SwordWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_FightingSword_WPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_FightingSword_WPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_DecoratedCutlass_WPPatch (C_Item)
{	
	name 				=	"Zdobená Šavle";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1100;

	damageTotal  		= 	105;
	damagetype 			=	DAM_EDGE;
	range    			=  	90;		

	on_equip			=	Equip_1h_DecoratedCutlass_WPPatch;
	on_unequip			=	UnEquip_1h_DecoratedCutlass_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	95;
	visual 				=	"1h_CutlassWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_DecoratedCutlass_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_DecoratedCutlass_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_WarriorsVengeance_WPPatch (C_Item)
{	
	name 				=	"Váleèníkova Pomsta";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1400;

	damageTotal  		= 	135;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	on_equip			=	Equip_1h_WarriorsVengeance_WPPatch;
	on_unequip			=	UnEquip_1h_WarriorsVengeance_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	130;
	visual 				=	"1h_bastard_merylWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_WarriorsVengeance_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_WarriorsVengeance_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_PaladinBastard_WPPatch (C_Item)
{	
	name 				=	"Paladinský Meè Bastard";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1300;

	damageTotal  		= 	115;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	on_equip			=	Equip_1h_PaladinBastard_WPPatch;
	on_unequip			=	UnEquip_1h_PaladinBastard_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	95;
	visual 				=	"1h_bastard_swordWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_PaladinBastard_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_PaladinBastard_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_SoldierSword_WPPatch (C_Item)
{	
	name 				=	"Vojenský Meè";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	750;

	damageTotal  		= 	55;
	damagetype 			=	DAM_EDGE;
	range    			=  	70;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	50;
	visual 				=	"1h_SwordSLDWPACH.3DS";

	description			= name;
	TEXT[0]             =       "";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_1h_BaronsRight_WPPatch (C_Item)
{	
	name 				=	"Baronovo Právo";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1100;

	damageTotal  		= 	120;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		

	on_equip			=	Equip_1h_BaronsRight_WPPatch;
	on_unequip			=	UnEquip_1h_BaronsRight_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	110;
	visual 				=	"1h_Sword_BastardBARONWPACH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_BaronsRight_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
};
func void UnEquip_1h_BaronsRight_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
};
INSTANCE ItMw_1h_GoodAxe_WPPatch (C_Item)
{	
	name 				=	"Kvalitní Sekera";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	700;

	damageTotal  		= 	65;
	damagetype 			=	DAM_EDGE;
	range    			=  	60;		

	on_equip			=	Equip_1h_GoodAxe_WPPatch;
	on_unequip			=	UnEquip_1h_GoodAxe_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	60;
	visual 				=	"1h_Axe_01WPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+3% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_GoodAxe_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 3);
};
func void UnEquip_1h_GoodAxe_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -3);
};
INSTANCE ItMw_1h_GoodDoubleAxe_WPPatch (C_Item)
{	
	name 				=	"Kvalitní Dvoubøitá Sekera";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1000;

	damageTotal  		= 	95;
	damagetype 			=	DAM_EDGE;
	range    			=  	60;		

	on_equip			=	Equip_1h_GoodDoubleAxe_WPPatch;
	on_unequip			=	UnEquip_1h_GoodDoubleAxe_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	90;
	visual 				=	"1h_Axe_02WPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+3% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_GoodDoubleAxe_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 3);
};
func void UnEquip_1h_GoodDoubleAxe_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -3);
};
INSTANCE ItMw_1h_PiratesCompanion_WPPatch (C_Item)
{	
	name 				=	"Pirátùv Spoleèník";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1500;

	damageTotal  		= 	110;
	damagetype 			=	DAM_EDGE;
	range    			=  	75;		

	on_equip			=	Equip_1h_PiratesCompanion_WPPatch;
	on_unequip			=	UnEquip_1h_PiratesCompanion_WPPatch;

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	55;
	visual 				=	"palaszWPACH.3DS";

	description			= name;
	TEXT[0]             =       "+10% Jednoruèní talent";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_PiratesCompanion_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 10);
};
func void UnEquip_1h_PiratesCompanion_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -10);
};
INSTANCE ItMw_1h_PiratesAssurance_WPPatch (C_Item)
{	
	name 				=	"Pirátova Jistota";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	975;

	damageTotal  		= 	95;
	damagetype 			=	DAM_EDGE;
	range    			=  	75;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	90;
	visual 				=	"palasz2WPACH.3DS";

	description			= name;
	TEXT[0]             =       "";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_Corsair_WPPatch (C_Item)
{	
	name 				=	"Korzár";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1300;

	damageTotal  		= 	125;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"2h_ScimitarWPATCH.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_WarAxe_WPPatch (C_Item)
{	
	name 				=	"Váleèná Sekera";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	900;

	damageTotal  		= 	90;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	90;
	visual 				=	"2h_AxeWARWPATCH.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_FarmersSpear_WPPatch (C_Item)
{	
	name 				=	"Sedlácké Kopí";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	450;

	damageTotal  		= 	45;
	damagetype 			=	DAM_EDGE;
	range    			=  	115;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	25;
	visual 				=	"2h_SpearFARMERWPATCH.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_SoldierSword_WPPatch (C_Item)
{	
	name 				=	"Vojenský Obouruèák";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	650;

	damageTotal  		= 	65;
	damagetype 			=	DAM_EDGE;
	range    			=  	115;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	60;
	visual 				=	"2h_SwordSLDWPATCH.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
INSTANCE ItMw_2h_FineSword_WPPatch (C_Item)
{	
	name 				=	"Kvalitní Obouruèák";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1200;

	damageTotal  		= 	115;
	damagetype 			=	DAM_EDGE;
	range    			=  	95;		
	
	on_equip			=	Equip_2h_FineSword_WPPatch;
	on_unequip			=	UnEquip_2h_FineSword_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	105;
	visual 				=	"2h_Noble_SwordFINEWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+5% Obouruèní talent.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_FineSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
};
func void UnEquip_2h_FineSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
};
INSTANCE ItMw_2h_StormSpear_WPPatch (C_Item)
{	
	name 				=	"Bouøný Oštìp";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_PalZweihaender;

	damageTotal  		= 	105;
	damagetype 			=	DAM_EDGE;
	range    			=  	140;		
	
	on_equip			=	Equip_2h_StormSpear_WPPatch;
	on_unequip			=	UnEquip_2h_StormSpear_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	100;
	visual 				=	"2h_glewiaWPATCH.3DS";

	description			= name;
	TEXT[0]             =       "+3% Obouruèní talent.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_StormSpear_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 3);
};
func void UnEquip_2h_StormSpear_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -3);
};
INSTANCE ItMw_2h_SleeperWeapon_WPPatch (C_Item)
{	
	name 				=	"Spáèùv Pohled";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	2500;

	damageTotal  		= 	180;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;		
	
	on_equip			=	Equip_2h_SleeperWeapon_WPPatch;
	on_unequip			=	UnEquip_2h_SleeperWeapon_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	160;
	visual 				=	"ItMw_2H_SleeperEye.3DS";

	description			= name;
	TEXT[0]             =       "+5% Obouruèní talent.";
	TEXT[0]             =       "+15 ke všem obranám.";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_SleeperWeapon_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
	self.protection [PROT_EDGE] 	+=   15;
	self.protection [PROT_BLUNT]	+=   15;
	self.protection [PROT_POINT]	+=   15;
 	self.protection [PROT_FIRE]     +=   15;
	self.protection [PROT_MAGIC]    +=   15;
};
func void UnEquip_2h_SleeperWeapon_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
	self.protection [PROT_EDGE] 	-=   15;
	self.protection [PROT_BLUNT]	-=   15;
	self.protection [PROT_POINT]	-=   15;
 	self.protection [PROT_FIRE]     -=   15;
	self.protection [PROT_MAGIC]    -=   15;
};
INSTANCE ItMw_2h_JanDragonSword_WPPatch (C_Item)
{	
	name 				=	"Sekáè Drakù";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1750;

	damageTotal  		= 	120;
	damagetype 			=	DAM_EDGE;
	range    			=  	120;		
	
	on_equip			=	Equip_2h_JanDragonSword_WPPatch;
	on_unequip			=	UnEquip_2h_JanDragonSword_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	100;
	visual 				=	"ITMW_080_2H_SWORD_HEAVY_042.3DS";
    effect                      =       "SPELLFX_HEALTHPOTION";

	description			= name;
	TEXT[0]             =       "+5% Obouruèní talent.";
	TEXT[1]             =       "+30 Ochrana proti ohni";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_JanDragonSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
    self.protection [PROT_FIRE] 		+=  30;
};
func void UnEquip_2h_JanDragonSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
    self.protection [PROT_FIRE] 		-=  30;
};
INSTANCE ItMw_1h_JanDragonSword_WPPatch (C_Item)
{	
	name 				=	"Sekáè Drakù";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	1500;

	damageTotal  		= 	130;
	damagetype 			=	DAM_EDGE;
	range    			=  	90;		

	on_equip			=	Equip_1h_JanDragonSword_WPPatch;
	on_unequip			=	UnEquip_1h_JanDragonSword_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ITMW_045_1H_SWORD_SMITH_022.3DS";
    effect                      =       "SPELLFX_HEALTHPOTION";

	description			= name;
	TEXT[0]             =       "+5% Jednoruèní talent";	
	TEXT[1]             =       "+25 Ochrana proti ohni";		
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_JanDragonSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
    self.protection [PROT_FIRE] 		+=  25;
};
func void UnEquip_1h_JanDragonSword_WPPatch()
{
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
    self.protection [PROT_FIRE] 		-=  25;
};
INSTANCE ItMw_1h_Blaise_WPPatch (C_Item)
{	
	name 				=	"Meè Váleèníkù z Jharkendaru";  //NUR MILIZ

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	800;

	damageTotal  		= 	70;
	damagetype 			=	DAM_EDGE;
	range    			=  	80;		

	on_equip			=	Equip_1h_Blaise_WPPatch;
	on_unequip			=	UnEquip_1h_Blaise_WPPatch;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	65;
	visual 				=	"ItMw_1H_Sword_Blaise.3DS";

	description			= name;
	TEXT[0]             =       "+5 Obrana proti všem poškozením";	
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_1h_Blaise_WPPatch()
{
	self.protection [PROT_EDGE] 	+=   5;
	self.protection [PROT_BLUNT]	+=   5;
	self.protection [PROT_POINT]	+=   5;
 	self.protection [PROT_FIRE]     +=   5;
	self.protection [PROT_MAGIC]    +=   5;
};
func void UnEquip_1h_Blaise_WPPatch()
{
	self.protection [PROT_EDGE] 	-=   5;
	self.protection [PROT_BLUNT]	-=   5;
	self.protection [PROT_POINT]	-=   5;
 	self.protection [PROT_FIRE]     -=   5;
	self.protection [PROT_MAGIC]    -=   5;
};
INSTANCE ItMw_2h_Blaise_WPPatch (C_Item)
{	
	name 				=	"Obouruèní Meè Váleèníkù z Jharkendaru";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	950;

	damageTotal  		= 	80;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;		
	
	on_equip			=	Equip_2h_Blaise_WPPatch;
	on_unequip			=	UnEquip_2h_Blaise_WPPatch;	

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	75;
	visual 				=	"ItMw_2H_Sword_Blaise.3DS";

	description			= name;
	TEXT[0]             =       "+10 Obrana proti všem poškozením.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
func void Equip_2h_Blaise_WPPatch()
{
	self.protection [PROT_EDGE] 	+=   10;
	self.protection [PROT_BLUNT]	+=   10;
	self.protection [PROT_POINT]	+=   10;
 	self.protection [PROT_FIRE]     +=   10;
	self.protection [PROT_MAGIC]    +=   10;
};
func void UnEquip_2h_Blaise_WPPatch()
{
	self.protection [PROT_EDGE] 	-=   10;
	self.protection [PROT_BLUNT]	-=   10;
	self.protection [PROT_POINT]	-=   10;
 	self.protection [PROT_FIRE]     -=   10;
	self.protection [PROT_MAGIC]    -=   10;
};
instance ItWr_BluePrint1_Sleeper_WPATCH(C_Item)
{
	name = "První èást nákresu meèe se vzorem Spáèe";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 200;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_BluePrint2_Sleeper_WPATCH(C_Item)
{
	name = "Druhá èást nákresu meèe se vzorem Spáèe";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 200;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;


	scemeName = "MAP";

	description = name;
};
