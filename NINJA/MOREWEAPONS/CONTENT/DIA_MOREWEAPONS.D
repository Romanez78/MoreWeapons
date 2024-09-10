// *********************************************************
// 		  				      My Changes				
// *********************************************************
//-------------------------------------
instance DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition;
	information	 = 	DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info;
	permanent	 = 	FALSE;
	important	 = 	FALSE;
	description	 = 	"NemÏl by jsi tu na prodej jeöùÏ nÏj·kÈ lepöÌ zbranÏ?.";
};
func int DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_PreTrade))
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_03"); //NemÏl by jsi tu na prodej jeöùÏ nÏj·kÈ lepöÌ zbranÏ?
    AI_Output(self, other, "DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_04"); //Jo mÏl, ale nem˘ûu ti je vöechny nabÌdnout hned.
	AI_Output(self, other, "DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_05"); //ZatÌm ti m˘ûu prodat jenom dvÏ, ale stav se pozdÏji, bude jich vÌc.
};
//-------------------------------------
var int MARTIN_WPATCH_BROADSWORD;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"KvalitnÌ öirok˝ MeË (JednoruËnÌ, PoökozenÌ: 50, pot¯ebn· sÌla: 40, Dosah: 80, +5% jednoruËnÌ bonus, Cena: 750).";
};
func int DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (MARTIN_WPATCH_BROADSWORD == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_4_1"); //Prodej mi kvalitnÌ öirok˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 750))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_BroadSword_WPPatch, 1);
		MARTIN_WPATCH_BROADSWORD = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_BROADSWORD_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int MARTIN_WPATCH_DAGGER;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_DAGGER_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Exotick· D˝ka (1H, Poök. 50, Pot¯. obrat. 25. +10% bonus 1H talentu, Cena: 500).";
};
func int DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (MARTIN_WPATCH_DAGGER == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_4_1"); //Prodej mi exotickou d˝ku.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 500))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_SaiDagger_WPPatch, 1);
	    MARTIN_WPATCH_DAGGER = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_DAGGER_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int MARTIN_WPATCH_WINGED;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_WINGED_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_WINGED_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_WINGED_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Ok¯Ìdlen˝ MeË (1H, Poök.: 70, pot¯ebn· sÌla: 60, Dosah: 75, +5% jednoruËnÌ bonus, Cena: 800).";
};
func int DIA_Martin_WEAPONNINJAPATCH_WINGED_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
	&& (MARTIN_WPATCH_WINGED == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_WINGED_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_WINGED_01_4_1"); //Prodej mi ok¯Ìdlen˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 800))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_WINGED_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_Wingedsword_WPPatch, 1);
		MARTIN_WPATCH_WINGED = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_WINGED_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int MARTIN_WPATCH_KNIGHT;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"RytÌ¯sk˝ MeË (2H, Poök.: 105, pot¯ebn· sÌla: 100, Dosah: 110, +5% obouruËnÌ bonus, Cena: 1000).";
};
func int DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 2)
	&& (MARTIN_WPATCH_KNIGHT == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_4_1"); //Prodej mi RitÌ¯sk˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1000))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_KnightSword_WPPatch, 1);
		MARTIN_WPATCH_KNIGHT = TRUE;	
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_KNIGHT_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int MARTIN_WPATCH_BUTCHER;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"ÿeznÌk (2H, Poök.: 115, pot¯ebn· sÌla: 110, Dosah: 105, +5% obouruËnÌ bonus, Cena: 1200).";
};
func int DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 3)
	&& (MARTIN_WPATCH_BUTCHER == FALSE)		
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_4_1"); //Prodej mi meË "ÿeznÌk".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1200))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_BroadSword_WPPatch, 1);
			MARTIN_WPATCH_BUTCHER = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_BUTCHER_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int MARTIN_WPATCH_MASTER;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_Master_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_Master_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_Master_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"SekaË (2H, Poök.: 145, pot¯ebn· sÌla: 140, Dosah: 110, Cena: 1500).";
};
func int DIA_Martin_WEAPONNINJAPATCH_Master_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 4)
	&& (MARTIN_WPATCH_MASTER == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_Master_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_Master_01_4_1"); //Prodej mi meË "SekaË".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1500))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_Master_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_MasterSword_WPPatch, 1);
				MARTIN_WPATCH_MASTER = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_Master_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int MARTIN_WPATCH_EXEC;
//-------------------------------------
instance DIA_Martin_WEAPONNINJAPATCH_Executioner_01		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	DIA_Martin_WEAPONNINJAPATCH_Executioner_01_Condition;
	information	 = 	DIA_Martin_WEAPONNINJAPATCH_Executioner_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"PopravËÌ sekera (2H, Poök.: 75, pot¯ebn· sÌla: 75, Dosah: 110, Cena: 700).";
};
func int DIA_Martin_WEAPONNINJAPATCH_Executioner_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Martin_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (MARTIN_WPATCH_EXEC == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Martin_WEAPONNINJAPATCH_Executioner_01_Info ()
{
	AI_Output(other, self, "DIA_Martin_WEAPONNINJAPATCH_Executioner_01_4_1"); //Prodej mi popravËÌ sekeru.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 700))
	{	
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_Executioner_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_ExecutionersAxe_WPPatch, 1);
					MARTIN_WPATCH_EXEC = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_Martin_WEAPONNINJAPATCH_Executioner_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
var	int DIA_Tandor_PaladinWaffen_WPATCH_Ein;
var int DIA_Tandor_PaladinWaffen_WPATCH_Zwei;
instance DIA_Tandor_PaladinWaffen_WPATCH		(C_INFO)
{
	npc		 	 = 	PAL_260_Tandor;
	nr		 	 =  3;
	condition	 = 	DIA_Tandor_PaladinWaffen_WPATCH_Condition;
	information	 = 	DIA_Tandor_PaladinWaffen_WPATCH_Info;
	description	 = 	"Byl jsem p¯ijat mezi paladiny a p¯iöel jsem si pro meË.";
};

func int DIA_Tandor_PaladinWaffen_WPATCH_Condition ()
{
	if (other.guild == GIL_PAL)
	{
		return TRUE;
	};
};
func void DIA_Tandor_PaladinWaffen_WPATCH_Info ()
{
	AI_Output (other, self, "DIA_Tandor_PaladinWaffen_WPATCH_Nah_08_01"); //Byl jsem p¯ijat mezi paladiny a p¯iöel jsem si pro meË.	
	AI_Output (self, other, "DIA_Tandor_Equipment_Nah_08_01"); //JednoruËnÌ nebo ObouruËnÌ?
	
	Info_ClearChoices (DIA_Tandor_PaladinWaffen_WPATCH);
	Info_AddChoice 	  (DIA_Tandor_PaladinWaffen_WPATCH,"JednoruËnÌ",DIA_Tandor_PaladinWaffen_WPATCH_Ein);
	Info_AddChoice 	  (DIA_Tandor_PaladinWaffen_WPATCH,"ObouruËnÌ",DIA_Tandor_PaladinWaffen_WPATCH_Zwei);
};	
FUNC VOID DIA_Tandor_PaladinWaffen_WPATCH_Ein()
{
	AI_Output (other, self, "DIA_Tandor_Equipment_Ein_15_00"); //JednoruËnÌ.
	AI_Output (self, other, "DIA_Tandor_Equipment_Ein_WPATCH_08_01"); //Vezmi si tuhle sekeru.
	B_GiveInvItems (self,other, ItMw_1h_GoodDoubleAxe_WPPatch,1);
	Info_ClearChoices (DIA_Tandor_PaladinWaffen_WPATCH);
};
FUNC VOID DIA_Tandor_PaladinWaffen_WPATCH_Zwei()
{
	AI_Output (other, self, "DIA_Tandor_Equipment_Zwei_15_00"); //ObouruËnÌ.
	AI_Output (self, other, "DIA_Tandor_Equipment_Zwei_WPATCH_08_01"); //MyslÌm si ûe ti bude vyhovovat tenhle rytÌ¯sk˝ meË.
	B_GiveInvItems (self,other,ItMw_2h_KnightSword_WPPatch,1);
	Info_ClearChoices (DIA_Tandor_PaladinWaffen_WPATCH);
};
var int JAN_WPATCH_ONEHANDED;
var int JAN_WPATCH_TWOHANDED;
const string	TOPIC_JAN_COOLSWORDWPATCH				=   "MeË od drakobijce Jana";
INSTANCE DIA_JAN_CoolSwords_WPATCH (C_INFO)
{
	npc			= DJG_714_Jan;
	nr			= 4;
	condition	= DIA_JAN_CoolSwords_WPATCH_Condition;
	information	= DIA_JAN_CoolSwords_WPATCH_Info;
	permanent	= FALSE;
	description	= "Opravdu mi nem˘ûeö obstarat û·dnou zbraÚ?";
};                       

FUNC INT DIA_JAN_CoolSwords_WPATCH_Condition()
{
	if (Npc_KnowsInfo (other, DIA_JAN_SellWeapons))
	{
		return 1;
	};	
};
 
FUNC VOID DIA_JAN_CoolSwords_WPATCH_Info()
{		
		AI_Output (other,self ,"DIA_JAN_CoolSwords_WPATCH_15_00"); //Opravdu mi nem˘ûeö obstarat û·dnou zbraÚ?
		AI_Output (self ,other,"DIA_JAN_CoolSwords_WPATCH_10_01"); //Ty si ned·ö ¯Ìct ûe jo? VlastnÏ je tu nÏco co bych ti mohl d·t.
		AI_Output (self ,other,"DIA_JAN_CoolSwords_WPATCH_10_02"); //P¯ed nÏjakou dobou jsem udÏlal n·kres pro skvÏl˝ meË proti drak˘m, opravdov˝ unik·t.
		AI_Output (self ,other,"DIA_JAN_CoolSwords_WPATCH_10_03"); //Nem·m ale materi·ly na jeho v˝robu, takûe kdyby si mi je p¯inesl mohl bych ho pro tebe vykovat.
		AI_Output (other,self ,"DIA_JAN_CoolSwords_WPATCH_15_04"); //Co pot¯ebujeö?		
		AI_Output (self ,other,"DIA_JAN_CoolSwords_WPATCH_10_05"); //To zaleûÌ, jestli chceö jednoruËnÌ nebo obouruËnÌ meË.
	Info_ClearChoices (DIA_JAN_CoolSwords_WPATCH);
	Info_AddChoice 	  (DIA_JAN_CoolSwords_WPATCH,"JednoruËnÌ",DIA_JAN_CoolSwords_WPATCH_Ein);
	Info_AddChoice 	  (DIA_JAN_CoolSwords_WPATCH,"ObouruËnÌ",DIA_JAN_CoolSwords_WPATCH_Zwei);
};
FUNC VOID DIA_JAN_CoolSwords_WPATCH_Ein()
{
	AI_Output (other, self, "DIA_Tandor_Equipment_Ein_15_00"); //JednoruËnÌ.
	AI_Output (self, other, "DIA_JAN_CoolSwords_WPATCH_081_01"); //Na ten budu pot¯ebovat jeden kus rudy, jeden kus draËÌch öupin a dvÏ lahviËky draËÌ krve.
	Info_ClearChoices (DIA_JAN_CoolSwords_WPATCH);
	Log_CreateTopic (TOPIC_JAN_COOLSWORDWPATCH, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_JAN_COOLSWORDWPATCH, LOG_RUNNING);
	B_LogEntry (TOPIC_JAN_COOLSWORDWPATCH,"Drakobijec Jan mi nabÌdl ûe mi vyrobÌ vyjÌmeËn˝ meË kdyû mu p¯inesu materi·l kter˝ pot¯ebuje. Na jednoruËnÌ meË pot¯ebuje jeden kus rudy, jeden kus draËÌch öupin a dvÏ lahviËky draËÌ krve.");
	JAN_WPATCH_ONEHANDED = TRUE;
};
FUNC VOID DIA_JAN_CoolSwords_WPATCH_Zwei()
{
	AI_Output (other, self, "DIA_Tandor_Equipment_Zwei_15_00"); //ObouruËnÌ.
	AI_Output (self, other, "DIA_JAN_CoolSwords_WPATCH_08_01"); //Na ten budu pot¯ebovat dva kusy rudy, dva kusy draËÌch öupin a Ëty¯i lahviËky draËÌ krve.
	Info_ClearChoices (DIA_JAN_CoolSwords_WPATCH);
	Log_CreateTopic (TOPIC_JAN_COOLSWORDWPATCH, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_JAN_COOLSWORDWPATCH, LOG_RUNNING);
	B_LogEntry (TOPIC_JAN_COOLSWORDWPATCH,"Drakobijec Jan mi nabÌdl ûe mi vyrobÌ vyjÌmeËn˝ meË kdyû mu p¯inesu materi·l kter˝ pot¯ebuje. Na obouruËnÌ meË pot¯ebuje dva kusy rudy, dva kusy draËÌch öupin a Ëty¯i lahviËky draËÌ krve.");
	JAN_WPATCH_TWOHANDED = TRUE;
};
instance DIA_JAN_MAKE_ONEHANDEDSWORD_WPATCH (C_INFO)
{
	npc			 =  DJG_714_Jan;
	nr			 =  888;
	condition	 = 	DIA_JAN_MAKE_ONEHANDEDSWORD_WPATCH_Condition;
	information	 = 	DIA_JAN_MAKE_ONEHANDEDSWORD_WPATCH_Info;
	permanent	 = 	FALSE;
	description	 = 	"P¯inesl jsem ti vöechny materi·ly pro meË.";
};
func int DIA_JAN_MAKE_ONEHANDEDSWORD_WPATCH_Condition ()
{	
	if (JAN_WPATCH_ONEHANDED == TRUE)
    && (Npc_HasItems(other, ItMi_Nugget) >= 1)
	&& (Npc_HasItems(other, ItAt_DragonBlood) >= 2)
	&& (Npc_HasItems(other, ItAt_DragonScale) >= 1)
	{
		return TRUE;
	};
};
func void DIA_JAN_MAKE_ONEHANDEDSWORD_WPATCH_Info ()
{
    AI_Output(other, self, "DIA_JAN_MAKE_ONEHANDEDSWORD_15_01"); //P¯inesl jsem ti vöechny materi·ly pro meË.
	
	if (Npc_HasItems(other, ItMi_Nugget) >= 1)
	&& (Npc_HasItems(other, ItAt_DragonBlood) >= 2)
	&& (Npc_HasItems(other, ItAt_DragonScale) >= 1)
	{	
        B_GivePlayerXP(25);
        B_GiveInvItems(other, self, ItMi_Nugget, 1);
		B_GiveInvItems(other, self, ItAt_DragonBlood, 2);
		B_GiveInvItems(other, self, ItAt_DragonScale, 1);
        AI_Output(other, self, "DIA_JAN_MAKE_ONEHANDEDSWORD_15_10"); //Tady to je.
        AI_Output(self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_11"); //Jo, to je vöechno.
        AI_Output(self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_12"); //Tak j· se tedy d·m do toho.        
       
	   B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);
		
		AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);
        
        AI_Output(self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_13"); //Hotovo.
        AI_Output(self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_14"); //Bude tÏ st·t 1000 zlat˝ch.
        AI_Output(other, self, "DIA_JAN_MAKE_ONEHANDEDSWORD_15_15"); //Coûe? NestaËÌ ti snad ûe jsem ti p¯inesl ty materi·ly?.
        AI_Output(self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_16"); //NebuÔ takov˝, dal jsem ti i slevu.		
        AI_Output(self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_17"); //Takov˝ meË m· svojÌ hodnotu, takûe ho dostaneö aû si ho zaplatÌö.		
		B_LogEntry (TOPIC_JAN_COOLSWORDWPATCH,"Jan mi prod· vykovan˝ meË za 1000 zlat˝ch.");
	}
	else 
	{
	    AI_Output (self, other, "DIA_JAN_MAKE_ONEHANDEDSWORD_13_18"); //Vraù se aû to vöechno budeö mÌt u sebe.
	};
};
instance DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH		(C_INFO)
{
	npc		 = 	DJG_714_Jan;
	nr		 = 	3;
	condition	 = 	DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_Condition;
	information	 = 	DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Sek·Ë Drak˘ (1H, Poö.: 130, pot¯. sÌla: 120, Dosah: 90, +5% 1H bonus, +25 proti ohni, Cena: 1000).";
};
func int DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_JAN_MAKE_ONEHANDEDSWORD_WPATCH))
	{
		return TRUE;
	};
};
func void DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_Info ()
{
	AI_Output(other, self, "DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_4_1"); //Prodej mi Sek·Ë Drak˘.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1000))
	{	
		AI_Output(self, other, "DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_JanDragonSword_WPPatch, 1);
				Log_SetTopicStatus(TOPIC_JAN_COOLSWORDWPATCH, LOG_SUCCESS);
			B_LogEntry (TOPIC_JAN_COOLSWORDWPATCH,"Koupil jsem si meË od Jana.");	
	}
	else 
	{
		AI_Output(self, other, "DIA_JAN_BUYONEHANDEDSWORD_WEAPONNINJAPATCH_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
instance DIA_JAN_MAKE_TWOHANDEDSWORD_WPATCH (C_INFO)
{
	npc			 =  DJG_714_Jan;
	nr			 =  888;
	condition	 = 	DIA_JAN_MAKE_TWOHANDEDSWORD_WPATCH_Condition;
	information	 = 	DIA_JAN_MAKE_TWOHANDEDSWORD_WPATCH_Info;
	permanent	 = 	FALSE;
	description	 = 	"P¯inesl jsem ti vöechny materi·ly pro meË.";
};
func int DIA_JAN_MAKE_TWOHANDEDSWORD_WPATCH_Condition ()
{	
	if (JAN_WPATCH_TWOHANDED == TRUE)
    && (Npc_HasItems(other, ItMi_Nugget) >= 2)
	&& (Npc_HasItems(other, ItAt_DragonBlood) >= 4)
	&& (Npc_HasItems(other, ItAt_DragonScale) >= 2)
	{
		return TRUE;
	};
};
func void DIA_JAN_MAKE_TWOHANDEDSWORD_WPATCH_Info ()
{
    AI_Output(other, self, "DIA_JAN_MAKE_TWOHANDEDSWORD_15_01"); //P¯inesl jsem ti vöechny materi·ly pro meË.
	
	if (Npc_HasItems(other, ItMi_Nugget) >= 2)
	&& (Npc_HasItems(other, ItAt_DragonBlood) >= 4)
	&& (Npc_HasItems(other, ItAt_DragonScale) >= 2)
	{	
        B_GivePlayerXP(25);
        B_GiveInvItems(other, self, ItMi_Nugget, 2);
		B_GiveInvItems(other, self, ItAt_DragonBlood, 4);
		B_GiveInvItems(other, self, ItAt_DragonScale, 2);
        AI_Output(other, self, "DIA_JAN_MAKE_TWOHANDEDSWORD_15_10"); //Tady to je.
        AI_Output(self, other, "DIA_JAN_MAKE_TWOHANDEDSWORD_13_11"); //Jo, to je vöechno.
        AI_Output(self, other, "DIA_JAN_MAKE_TWOHANDEDSWORD_13_12"); //Tak j· se tedy d·m do toho.        
       
	   B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);
		
		AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);
        
        AI_Output(self, other, "DIA_JAN_MAKE_TWOHANDEDSWORD_13_13"); //Hotovo.
        AI_Output(self, other, "DIA_JAN_MAKE_TWOHANDEDSWORD_13_14"); //Bude tÏ st·t 1200 zlat˝ch.
        AI_Output(other, self, "DIA_JAN_MAKE_TWOHANDEDSWORD_15_15"); //Coûe? NestaËÌ ti snad ûe jsem ti p¯inesl ty materi·ly?.
        AI_Output(self, other, "DIA_JAN_MAKE_TWOHANDEDSWORD_13_16"); //NebuÔ takov˝, dal jsem ti i slevu.		
        AI_Output(self, other, "DIA_JAN_MAKE_TWOHANDEDSWORD_13_17"); //Takov˝ meË m· svojÌ hodnotu, takûe ho dostaneö aû si ho zaplatÌö.		
		B_LogEntry (TOPIC_JAN_COOLSWORDWPATCH,"Jan mi prod· vykovan˝ meË za 1200 zlat˝ch.");
	}
	else 
	{
	    AI_Output (self, other, "DIA_BENNET_MERC_MReforgedArmor_13_16"); //Vraù se aû to vöechno budeö mÌt u sebe.
	};
};
instance DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH		(C_INFO)
{
	npc		 = 	DJG_714_Jan;
	nr		 = 	3;
	condition	 = 	DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_Condition;
	information	 = 	DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Sek·Ë Drak˘ (2H, Poö.: 150, pot¯. sÌla: 140, Dosah: 140, +5% 2H bonus, +30 proti ohni, Cena: 1200).";
};
func int DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_JAN_MAKE_TWOHANDEDSWORD_WPATCH))
	{
		return TRUE;
	};
};
func void DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_Info ()
{
	AI_Output(other, self, "DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_4_1"); //Prodej mi Sek·Ë Drak˘.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1200))
	{	
		AI_Output(self, other, "DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_JanDragonSword_WPPatch, 1);
				Log_SetTopicStatus(TOPIC_JAN_COOLSWORDWPATCH, LOG_SUCCESS);
			B_LogEntry (TOPIC_JAN_COOLSWORDWPATCH,"Koupil jsem si meË od Jana.");
	}
	else 
	{
		AI_Output(self, other, "DIA_JAN_BUYTWOHANDEDSWORD_WEAPONNINJAPATCH_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
instance DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA		(C_INFO)
{
	npc		 = 	BDT_1097_Addon_Fisk;
	nr		 = 	3;
	condition	 = 	DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition;
	information	 = 	DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info;
	permanent	 = 	FALSE;
	important	 = 	FALSE;
	description	 = 	"To je vöechno co m·ö na prodej?";
};
func int DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Addon_Fisk_Hi))
	{
		return TRUE;
	};
};
func void DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info ()
{
	AI_Output(other, self, "DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_01"); //To je vöechno co m·ö na prodej?
    AI_Output(self, other, "DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_02"); //VlastnÏ nenÌ. Kdyû jsme sem poprvÈ p¯iöly tak jsem ve zdejöÌch ruin·ch naöel zvl·ötnÌ meËe, nejspÌö pat¯ily p¯edeölÌm obyvatel˘m"
	AI_Output(self, other, "DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_03"); //M˘ûu ti je prodat jestli chceö.
};
//-------------------------------------
var int FISK_WPATCH_ONE;
//-------------------------------------
instance DIA_FISK_BUYOENHANDER_WPATCH		(C_INFO)
{
	npc		 = 	BDT_1097_Addon_Fisk;
	nr		 = 	3;
	condition	 = 	DIA_FISK_BUYOENHANDER_WPATCH_Condition;
	information	 = 	DIA_FISK_BUYOENHANDER_WPATCH_Info;
	permanent	 = 	TRUE;
	description	 = 	"Jharkendarsk˝ MeË (1H, PoökozenÌ: 70, pot¯ebn· sÌla: 65, Dosah: 80, +5 ochrana proti vöemu, Cena: 800).";
};
func int DIA_FISK_BUYOENHANDER_WPATCH_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (FISK_WPATCH_ONE == FALSE)
	{
		return TRUE;
	};
};
func void DIA_FISK_BUYOENHANDER_WPATCH_Info ()
{
	AI_Output(other, self, "DIA_FISK_BUYOENHANDER_WPATCH_4_1"); //Prodej mi Jharkendarsk˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 800))
	{	
		AI_Output(self, other, "DIA_FISK_BUYOENHANDER_WPATCH_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_Blaise_WPPatch, 1);
	    FISK_WPATCH_ONE = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_FISK_BUYOENHANDER_WPATCH_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int FISK_WPATCH_TWO;
//-------------------------------------
instance DIA_FISK_BUYTOWHANDER_WPATCH		(C_INFO)
{
	npc		 = 	BDT_1097_Addon_Fisk;
	nr		 = 	3;
	condition	 = 	DIA_FISK_BUYTOWHANDER_WPATCH_Condition;
	information	 = 	DIA_FISK_BUYTOWHANDER_WPATCH_Info;
	permanent	 = 	TRUE;
	description	 = 	"Jharkendarsk˝ ObouruËnÌ MeË (2H, Poök.: 80, pot¯ebn· sÌla: 75, Dosah: 130, +10 ochrana proti vöemu, Cena: 950).";
};
func int DIA_FISK_BUYTOWHANDER_WPATCH_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Fisk_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (FISK_WPATCH_TWO == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_FISK_BUYTOWHANDER_WPATCH_Info ()
{
	AI_Output(other, self, "DIA_FISK_BUYTOWHANDER_WPATCH_4_1"); //Prodej mi Jharkendarsk˝ obouruËnÌ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 950))
	{	
		AI_Output(self, other, "DIA_FISK_BUYTOWHANDER_WPATCH_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_Blaise_WPPatch, 1);
	    FISK_WPATCH_TWO = TRUE;	
	}
	else 
	{
		AI_Output(self, other, "DIA_FISK_BUYTOWHANDER_WPATCH_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
instance DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition;
	information	 = 	DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info;
	permanent	 = 	FALSE;
	important	 = 	FALSE;
	description	 = 	"To je cel· tvoje nabÌdka?";
};
func int DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition ()
{	
	if (Kapitel >= 1)
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_03"); //To je cel· tvoje nabÌdka?
    AI_Output(self, other, "DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_04"); //NenÌ, jeötÏ m·m na skladÏ p·r kousk˘ kterÈ nejsou vystaveny.
	AI_Output(self, other, "DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_05"); //PodÌvej se na tyhle.
};
//-------------------------------------
var int HAKON_WPATCH_HEAVY;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"TÏûk˝ MeË (JednoruËnÌ, PoökozenÌ: 125, pot¯ebn· sÌla: 125, Dosah: 90, Cena: 1300).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 3)
		&& (HAKON_WPATCH_HEAVY == FALSE)
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_4_1"); //Prodej mi tÏûk˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1300))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_HeavySword_WPPatch, 1);
	 HAKON_WPATCH_HEAVY = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_HEAVYSWORD_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_DBS;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Zdoben˝ MeË Bastard (1H, Poök.: 115, pot¯ebn· sÌla: 105, Dosah: 90, +5% jednoruËnÌ talent, Cena: 1250).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 3)
		&& (HAKON_WPATCH_DBS == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_4_1"); //Prodej mi zdoben˝ meË bastard.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1250))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_DecoratedBastardSword_WPatch, 1);
	HAKON_WPATCH_DBS = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_DECORATEDBASTARDSWORD_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_GoodLongSword;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Dobr˝ Dlouh˝ MeË (1H, Poök.: 85, pot¯ebn· sÌla: 80, Dosah: 90, +3% jednoruËnÌ talent, Cena: 875).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (HAKON_WPATCH_GoodLongSword == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_4_1"); //Prodej mi dobr˝ dlouh˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 875))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_GoodLongSword_WPatch, 1);
	HAKON_WPATCH_GoodLongSword = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_GoodLongSword_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_FightingSword;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Bojov˝ MeË (1H, Poök.: 75, pot¯ebn· sÌla: 65, Dosah: 75, +5% jednoruËnÌ talent, Cena: 875).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (HAKON_WPATCH_FightingSword == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_4_1"); //Prodej mi bojov˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 875))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_FightingSword_WPatch, 1);
	HAKON_WPATCH_FightingSword = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_FightingSword_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_WarriorsVengeance;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"V·leËnÌkova Pomsta (1H, Poök.: 135, pot¯ebn· sÌla: 130, Dosah: 100, +5% jednoruËnÌ talent, Cena: 1400).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 4)
		&& (HAKON_WPATCH_WarriorsVengeance == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_4_1"); //Prodej mi meË "V·leËnÌkova Pomsta".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1400))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_WarriorsVengeance_WPPatch, 1);
	HAKON_WPATCH_WarriorsVengeance = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_WarriorsVengeance_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_SoldierSword;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Vojensk˝ MeË (1H, Poök.: 55, pot¯ebn· sÌla: 50, Dosah: 70, Cena: 500).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (HAKON_WPATCH_SoldierSword == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_4_1"); //Prodej mi vojensk˝ meË.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 500))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_SoldierSword_WPPatch, 1);
	HAKON_WPATCH_SoldierSword = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_SoldierSword_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_BaronsRight;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Baronovo Pr·vo (1H, Poök.: 120, pot¯ebn· sÌla: 110, Dosah: 100, +5% jednoruËnÌ talent, Cena: 1100).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 3)
		&& (HAKON_WPATCH_BaronsRight == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_4_1"); //Prodej mi meË "Baronovo Pr·vo".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1100))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_BaronsRight_WPPatch, 1);
	HAKON_WPATCH_BaronsRight = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_BaronsRight_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_GoodAxe;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"KvalitnÌ Sekera (1H, Poök.: 65, pot¯ebn· sÌla: 60, Dosah: 60, +5% jednoruËnÌ talent, Cena: 700).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (HAKON_WPATCH_GoodAxe == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_4_1"); //Prodej mi KvalitnÌ Sekeru.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 700))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_GoodAxe_WPPatch, 1);
	HAKON_WPATCH_GoodAxe = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_GoodAxe_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_GoodDoubleAxe;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"KvalitnÌ Dvoub¯it· Sekera (1H, Poök.: 95, pot¯ebn· sÌla: 90, Dosah: 60, +3% jednoruËnÌ talent, Cena: 1000).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 2)
		&& (HAKON_WPATCH_GoodDoubleAxe == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01_4_1"); //Prodej mi kvalitnÌ dvoub¯itou sekeru.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1000))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxee_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_GoodDoubleAxe_WPPatch, 1);
	HAKON_WPATCH_GoodDoubleAxe = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_GoodDoubleAxe_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_WarAxe;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"V·leËn· Sekera (2H, Poök.: 90, pot¯ebn· sÌla: 90, Dosah: 130, Cena: 900).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 2)
		&& (HAKON_WPATCH_WarAxe == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_4_1"); //Prodej mi V·leËnou sekeru.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 900))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_WarAxe_WPPatch, 1);
	HAKON_WPATCH_WarAxe = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_WarAxe_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_FarmersSpear;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Farm·¯sk˝ OötÏp (2H, Poök.: 45, pot¯ebn· sÌla: 25, Dosah: 115, Cena: 450).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (HAKON_WPATCH_FarmersSpear == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_4_1"); //Prodej mi farm·¯sk˝ oötÏp.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 450))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_FarmersSpear_WPPatch, 1);
	HAKON_WPATCH_FarmersSpear = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_FarmersSpear_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_SoldierSword2;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Vojensk˝ ObouruË·k (2H, Poök.: 65, pot¯ebn· sÌla: 60, Dosah: 115, Cena: 650).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 1)
		&& (HAKON_WPATCH_SoldierSword2 == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_4_1"); //Prodej mi vojensk˝ obouruË·k.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 650))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_SoldierSword_WPPatch, 1);
	HAKON_WPATCH_SoldierSword2 = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_SoldierSword2_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_2h_FineSword;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"KvalitnÌ ObouruË·k (2H, Poök.: 115, pot¯ebn· sÌla: 105, Dosah: 95, Cena: 1200).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 3)
		&& (HAKON_WPATCH_2h_FineSword == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_4_1"); //Prodej mi kvalitnÌ obouruË·k.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1200))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_FineSword_WPPatch, 1);
	HAKON_WPATCH_2h_FineSword = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_2h_FineSword_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int HAKON_WPATCH_2h_StormSpear;
//-------------------------------------
instance DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01		(C_INFO)
{
	npc		 = 	VLK_407_Hakon;
	nr		 = 	3;
	condition	 = 	DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_Condition;
	information	 = 	DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Bou¯n˝ OötÏp (2H, Poök.: 105, pot¯ebn· sÌla: 100, Dosah: 140, Cena: 1100).";
};
func int DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_HAKON_WEAPONSQUESTION_PATCHWEAPONSNINJA))
	&& (Kapitel >= 2)
		&& (HAKON_WPATCH_2h_StormSpear == FALSE)	
	{
		return TRUE;
	};
};
func void DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_Info ()
{
	AI_Output(other, self, "DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_4_1"); //Prodej mi Bou¯n˝ oötÏp.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1100))
	{	
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_StormSpear_WPPatch, 1);
	HAKON_WPATCH_2h_StormSpear = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_HAKON_WEAPONNINJAPATCH_2h_StormSpear_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
instance DIA_PATCH_WEAPONEXPANSION_Pyrokar		(C_INFO)
{
	npc		 = 	KDF_500_Pyrokar;
	nr		 = 	30;
	condition	 = 	DIA_PATCH_WEAPONEXPANSION_Pyrokar_Condition;
	information	 = 	DIA_PATCH_WEAPONEXPANSION_Pyrokar_Info;
	important	 =	TRUE;

	description  = 	"VyËistil jsem vöechny svatinÏ.";
};

func int DIA_PATCH_WEAPONEXPANSION_Pyrokar_Condition ()
{
	if (MIS_Ulthar_HeileSchreine_PAL == LOG_SUCCESS)
	&& (Npc_KnowsInfo (other, DIA_Ulthar_SchreineGeheilt))
		{
				return TRUE;
		};
};

func void DIA_PATCH_WEAPONEXPANSION_Pyrokar_Info ()
{
	AI_Output			(self, other, "DIA_PATCH_WEAPONEXPANSION_Pyrokar_05_01"); //PoËkej.
	AI_Output			(self, other, "DIA_PATCH_WEAPONEXPANSION_Pyrokar_05_02"); //Vezmi si jeötÏ tenhle meË, pouûij ho v boji proti zlu.
	AI_Output			(other, self, "DIA_PATCH_WEAPONEXPANSION_Pyrokar_05_03"); //DÏkuji.
	B_GiveInvItems (self, other, ItMw_1h_PaladinBastard_WPPatch, 1);
};
//-------------------------------------
instance DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA		(C_INFO)
{
	npc		 = 	PIR_1357_Addon_Garett;
	nr		 = 	3;
	condition	 = 	DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition;
	information	 = 	DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info;
	permanent	 = 	FALSE;
	important	 = 	FALSE;
	description	 = 	"To je cel· tvoje nabÌdka?";
};
func int DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_Condition ()
{	
	if (Kapitel >= 1)
	&& (Npc_KnowsInfo (other, DIA_Addon_Garett_Hello))
	{
		return TRUE;
	};
};
func void DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_Info ()
{
	AI_Output(other, self, "DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_03"); //To je cel· tvoje nabÌdka?
    AI_Output(self, other, "DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_04"); //NenÌ, m·m schovan˝ch jeötÏ p·r hezk˝ch kousk˘. Nechci aby je jeden z ostatnÌch nebo Greg vzaly.
	AI_Output(self, other, "DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA_3_05"); //Koukej na tyhle.
};
//-------------------------------------
var int GARETT_WPATCH_DecoratedCutlass;
//-------------------------------------
instance DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01		(C_INFO)
{
	npc		 = 	PIR_1357_Addon_Garett;
	nr		 = 	3;
	condition	 = 	DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_Condition;
	information	 = 	DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Zdoben· äavle (JednoruËnÌ, PoökozenÌ: 105, pot¯ebn· sÌla: 95, Dosah: 90, Cena: 1100).";
};
func int DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA))
		&& (GARETT_WPATCH_DecoratedCutlass == FALSE)
	{
		return TRUE;
	};
};
func void DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_Info ()
{
	AI_Output(other, self, "DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_4_1"); //Prodej mi zdobenou öavli.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1100))
	{	
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_DecoratedCutlass_WPPatch, 1);
	 GARETT_WPATCH_DecoratedCutlass = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_DecoratedCutlass_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int GARETT_WPATCH_PiratesCompanion;
//-------------------------------------
instance DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01		(C_INFO)
{
	npc		 = 	PIR_1357_Addon_Garett;
	nr		 = 	3;
	condition	 = 	DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_Condition;
	information	 = 	DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Pir·t˘v SpoleËnÌk (1H, Poök.: 110, pot¯. obrat.: 55, Dosah: 75, +10% 1H talent, Cena: 1500).";
};
func int DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA))
		&& (GARETT_WPATCH_PiratesCompanion == FALSE)
	{
		return TRUE;
	};
};
func void DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_Info ()
{
	AI_Output(other, self, "DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_4_1"); //Prodej mi öavli "Pir·t˘v SpoleËnÌk".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1500))
	{	
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_PiratesCompanion_WPPatch, 1);
	 GARETT_WPATCH_PiratesCompanion = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_PiratesCompanion_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int GARETT_WPATCH_PiratesAssurance;
//-------------------------------------
instance DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01		(C_INFO)
{
	npc		 = 	PIR_1357_Addon_Garett;
	nr		 = 	3;
	condition	 = 	DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_Condition;
	information	 = 	DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Pir·tova Jistota (JednoruËnÌ, PoökozenÌ: 95, pot¯ebn· sÌla: 90, Dosah: 75, Cena: 975).";
};
func int DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA))
		&& (GARETT_WPATCH_PiratesAssurance == FALSE)
	{
		return TRUE;
	};
};
func void DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_Info ()
{
	AI_Output(other, self, "DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_4_1"); //Prodej mi öavli "Pir·tova Jistota".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 975))
	{	
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_1h_PiratesCompanion_WPPatch, 1);
	 GARETT_WPATCH_PiratesAssurance = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_PiratesAssurance_01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
var int GARETT_WPATCH_2h_Corsair;
//-------------------------------------
instance DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01		(C_INFO)
{
	npc		 = 	PIR_1357_Addon_Garett;
	nr		 = 	3;
	condition	 = 	DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01_Condition;
	information	 = 	DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01_Info;
	permanent	 = 	TRUE;
	description	 = 	"Korz·r (ObouruËnÌ, PoökozenÌ: 125, pot¯ebn· sÌla: 120, Dosah: 130, Cena: 1300).";
};
func int DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_GARETT_WEAPONSQUESTION_PATCHWEAPONSNINJA))
		&& (GARETT_WPATCH_2h_Corsair == FALSE)
	{
		return TRUE;
	};
};
func void DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01_Info ()
{
	AI_Output(other, self, "DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01_4_1"); //Prodej mi öavli "Korz·r".
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 1300))
	{	
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair_01_4_2"); //Tady je.
		B_GiveInvItems(self, other, ItMw_2h_Corsair_WPPatch, 1);
	 GARETT_WPATCH_2h_Corsair = TRUE;
	}
	else 
	{
		AI_Output(self, other, "DIA_GARETT_WEAPONNINJAPATCH_2h_Corsair01_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};
//-------------------------------------
const string	TOPIC_WPATCH_SLEEPER				=   "N·kresy meËe";
instance DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA		(C_INFO)
{
	npc		 = 	BDT_1075_Addon_Fortuno;
	nr		 = 	3;
	condition	 = 	DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Condition;
	information	 = 	DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Info;
	permanent	 = 	FALSE;
	important	 = 	TRUE;
};
func int DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Addon_Fortuno_more))
	{
		return TRUE;
	};
};
func void DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Info ()
{
    AI_Output(self, other, "DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_3_01"); //PoËkej.
	AI_Output(self, other, "DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_3_02"); //V tom chaosu co se dÏl v sektovnÌm t·bo¯e jsem s·hnul po n·kresu kter˝ mÏl u sebe Darion, ale roztrhnul se takûe m·m jenom p˘lku.
	AI_Output(self, other, "DIA_FORTUNO_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_3_03"); //Vezmi si jÌ na opl·tku, ja pro nÌ nem·m vyuûitÌ.
		B_GiveInvItems(self, other, ItWr_BluePrint1_Sleeper_WPATCH, 1);
	Log_CreateTopic (TOPIC_WPATCH_SLEEPER, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_WPATCH_SLEEPER, LOG_RUNNING);
	B_LogEntry (TOPIC_WPATCH_SLEEPER,"Fortuno mi dal kousek n·kresu zajÌmavÈho meËe, ale na jeho v˝robu jsou pot¯eba oba dva kusy.");

	if (Npc_Hasitems(other, ItWr_BluePrint2_Sleeper_WPATCH) > 0)
	{
	B_LogEntry (TOPIC_WPATCH_SLEEPER,"TeÔ m·m oba dva kusy pl·nku pro meË, myslÌm si ûe Bennet bude spr·vn· volba kov·¯e. Ale nejd¯Ìve se musÌm vypo¯·dat s Draky.");
	};
};
//-------------------------------------
instance DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA		(C_INFO)
{
	npc		 = 	DJG_705_Angar;
	nr		 = 	3;
	condition	 = 	DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Condition;
	information	 = 	DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Info;
	permanent	 = 	FALSE;
	important	 = 	TRUE;
};
func int DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Condition ()
{	
	if (DJG_AngarGotAmulett == TRUE)
	{
		return TRUE;
	};
};
func void DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_Info ()
{
    AI_Output(self, other, "DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_3_01"); //PoËkej.
	AI_Output(self, other, "DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_3_02"); //M·m u sebe kousek n·kresu na nÏj·k˝ meË, ale uû si nepamatuji kde jsem ho sehnal.
	AI_Output(self, other, "DIA_ANGAR_HAVE_A_FUNNY_LITTLE_PAPER_PATCHWEAPONSNINJA_3_03"); //Vezmi si ho na opl·tku, z nÏj·kÈho d˘vodu uû s nÌm nechci nic mÌt.
		B_GiveInvItems(self, other, ItWr_BluePrint2_Sleeper_WPATCH, 1);
	Log_CreateTopic (TOPIC_WPATCH_SLEEPER, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_WPATCH_SLEEPER, LOG_RUNNING);
	B_LogEntry (TOPIC_WPATCH_SLEEPER,"Angar mi dal kousek n·kresu zajÌmavÈho meËe, ale na jeho v˝robu jsou pot¯eba oba dva kusy.");
	
	if (Npc_Hasitems(other, ItWr_BluePrint1_Sleeper_WPATCH) > 0)
	{
	B_LogEntry (TOPIC_WPATCH_SLEEPER,"TeÔ m·m oba dva kusy pl·nku pro meË, myslÌm si ûe Bennet bude spr·vn· volba kov·¯e. Ale nejd¯Ìve se musÌm vypo¯·dat s Draky.");
	};
};
//-------------------------------------
instance DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_Condition;
	information	 = 	DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Mohl by jsi mi udÏlat tenhle meË? (Uk·zat dva kusy n·kresu).";
};
func int DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_Condition ()
{	
	if (Npc_Hasitems(other, ItWr_BluePrint1_Sleeper_WPATCH) > 0)
	&& (Npc_Hasitems(other, ItWr_BluePrint2_Sleeper_WPATCH) > 0)
	&& (Kapitel >= 5)
	{
		return TRUE;
	};
};
func void DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_Info ()
{
    AI_Output(other, self, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_15_01"); //Mohl by jsi mi udÏlat tenhle meË?
		B_UseFakeScroll();
		AI_Output(self, other, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_13_02"); //To je opravdu zajÌmav˝ kousek, kde si k nÏmu p¯iöel?
    AI_Output(other, self, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_15_03"); //R˘znÏ jsem se toulal abych ten pl·nek naöel, zabralo to docela dlouho.	
		AI_Output(self, other, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSIONH_13_04"); //Ch·pu, no udÏlat ho dok·ûu ale budeö si na to muset p¯inÈst suroviny.	
	AI_Output(other, self, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_15_05"); //Co na to pot¯ebujeö?
	AI_Output(self, other, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_13_06"); //V n·kresu stojÌ ûe pot¯ebujeö jeden kus ËernÈ rudy, dva kusy magickÈ rudy, a dvÏ k˘ûe trolla.
	AI_Output(self, other, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_13_07"); //Bude to d¯ina docela, takûe za tu pr·ci chci 1800 zlat˝ch.
	AI_Output(other, self, "DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION_15_08"); //Dobr·, zkusÌm ti to vöechno p¯inÈst.
			B_LogEntry (TOPIC_WPATCH_SLEEPER,"Bennet souhlasil ûe mi meË vyrobÌ. Na v˝robu bude pot¯ebovat kus ËernÈ rudy, dva kousky magickÈ rudy, dvÏ k˘ûe z trolla a 1800 zlat˝ch. NesmÌm zapomenout mu taky d·t kousky n·kresu.");
};
//-------------------------------------
var int BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH;
//-------------------------------------
instance DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_Condition;
	information	 = 	DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_Info;
	permanent	 = 	FALSE;
	description	 = 	"M·m vöechny pot¯ebnÈ materi·ly na v˝robu meËe z dvou kus˘ pl·nku.";
};
func int DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_Condition ()
{	
	if (Npc_Hasitems(other, ItMi_Nugget) > 2)
    && (Npc_HasItems(other, ItAt_Trollfur) >= 2)
	&& (Npc_HasItems(other, 	ItMi_Zeitspalt_Addon) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 1800)
	&& (Npc_KnowsInfo (other, DIA_BENNET_SLEEPER_NINJA_WEAPONEXPANSION))
	&& (Npc_HasItems(other, ItWr_BluePrint1_Sleeper_WPATCH) >= 1)
    && (Npc_HasItems(other, ItWr_BluePrint2_Sleeper_WPATCH) >= 1)	
	{
		return TRUE;
	};
};
func void DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_Info ()
{
    AI_Output(other, self, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_15_01"); //M·m vöechny pot¯ebnÈ materi·ly na v˝robu meËe z dvou kus˘ pl·nku.
	
	if (Npc_Hasitems(other, ItMi_Nugget) > 2)
    && (Npc_HasItems(other, ItAt_Trollfur) >= 2)
	&& (Npc_HasItems(other, 	ItMi_Zeitspalt_Addon) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 1800)
		&& (Npc_HasItems(other, ItWr_BluePrint1_Sleeper_WPATCH) >= 1)
    && (Npc_HasItems(other, ItWr_BluePrint2_Sleeper_WPATCH) >= 1)
	{					
        B_GiveInvItems(other, self, ItMi_Nugget, 2);
        B_GiveInvItems(other, self, ItAt_TrollFur, 2);
		B_GiveInvItems(other, self, ItMi_Zeitspalt_Addon, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 1800);
        B_GiveInvItems(other, self, ItWr_BluePrint1_Sleeper_WPATCH, 1);       
        B_GiveInvItems(other, self, ItWr_BluePrint2_Sleeper_WPATCH, 1);
	   AI_Output(other, self, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_15_10"); //Tady to vöchno je.
        AI_Output(self, other, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_13_11"); //Dob¯e, jdu tedy ten meË vyrobit.
        
        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);       

        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);	   
	   
	   AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);
        
        AI_Output(self, other, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_13_12"); //Hotovo.
		B_GiveInvItems(self, other, ItMw_2h_SleeperWeapon_WPPatch, 1);
		B_GiveInvItems(self, other, ItWr_BluePrint1_Sleeper_WPATCH, 1);       
		B_GiveInvItems(self, other, ItWr_BluePrint2_Sleeper_WPATCH, 1);
	   AI_Output(self, other, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_13_13"); //Tady je, opravdu hezk˝ kousek.
        AI_Output(other, self, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_15_14"); //DÌky.
					Log_SetTopicStatus(TOPIC_WPATCH_SLEEPER, LOG_SUCCESS);
		B_LogEntry (TOPIC_WPATCH_SLEEPER,"Bennet mi vyrobil meË ze dvou kus˘ pl·nku.");
	}
	else 
	{
	    AI_Output (self, other, "DIA_BENNET_MERC_SLEEPERSWORDMAKE_NINJA_WPATCH_13_16"); //Vraù se aû to vöechno budeö mÌt u sebe.
	};
};