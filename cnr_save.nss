#include "nbde_inc"
#include "cnr_recipe_utils"
void main()
{
    object oPC = GetLastPCRested();
    // read skill xp values

int iSmelt= CnrGetTradeskillXPByType(oPC, 1)  ; // Smelting
int iWeap=CnrGetTradeskillXPByType(oPC, 2)  ; // Weapon Crafting
int iArm=CnrGetTradeskillXPByType(oPC, 3)  ; // Armor Crafting
int iAlch=CnrGetTradeskillXPByType(oPC, 4)  ; // Alchemy
int iScrib=CnrGetTradeskillXPByType(oPC, 5)  ; // Scribing
int iTink=CnrGetTradeskillXPByType(oPC, 6)  ; // Tinkering
int iWood=CnrGetTradeskillXPByType(oPC, 7)  ; // Wood Crafting
int iEnch=CnrGetTradeskillXPByType(oPC, 8)  ; // Enchanting
int iGem=CnrGetTradeskillXPByType(oPC, 9)  ; // Gem Crafting
int iTail=CnrGetTradeskillXPByType(oPC, 10)  ; //Tailoring
int iFood=CnrGetTradeskillXPByType(oPC, 11)  ; // Food Crafting

// store xp in database

NBDE_SetCampaignInt("cnr_data", "cnr_Smelt", iSmelt, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Weap", iWeap, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Arm", iArm, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Alch", iAlch, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Scrib", iScrib, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Tink", iTink, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Wood", iWood, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Ench", iEnch, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Gem", iGem, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Tail", iTail, oPC);
NBDE_SetCampaignInt("cnr_data", "cnr_Food", iFood, oPC);

// write to disk
NBDE_FlushCampaignDatabase("cnr_data");

SendMessageToPC(oPC,"Your trade skill progress has been saved");
}
