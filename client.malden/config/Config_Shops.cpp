/*
 * Author: Johannes "Letus" Bindriem
 * Config to Define all Shops
 *
 * DisplayName = Name  of Shop [String]
 * Condition = Check if player can open the Shop [String, Bool]
 * Items = Array of all Items that can buy in this Shop [Classname, DisplayName, BuyPrice, SellPrice, Condition
 *
 *
 */
class Config_Shops {
    class Shop_Test_01 {
        DisplayName = "Shop01";
        Condition = "";
        Items[] = {
            {"arifle_MX_F", "", 1000, 100, ""},
            {"NVGoggles", "", 100, 10, ""}
        };
    };

    class policeShop {
        DisplayName = "Polizei Dienst Ausrüstung";
        Condition = " !(lts_core_curSide isEqualTo ""cop"") ";
        Items[] = {
            {"U_B_GEN_Commander_F", "", 1000, 100, ""},
            {"U_B_GEN_Soldier_F", "", 1000, 100, ""},
            {"V_TacVest_blk_POLICE", "", 1000, 100, ""},
            {"V_PlateCarrier1_blk", "", 1000, 100, ""},
            {"B_AssaultPack_blk", "", 1000, 100, ""},
            {"H_Beret_02", "", 1000, 100, ""},
            {"H_Cap_police", "", 1000, 100, ""},
            {"SMG_03C_TR_black", "", 1000, 100, ""},
            {"50Rnd_570x28_SMG_03", "", 1000, 100, ""},
            {"arifle_MXC_Black_F", "", 1000, 100, ""},
            {"30Rnd_65x39_caseless_mag", "", 1000, 100, ""},
            {"SMG_05_F", "", 1000, 100, ""},
            {"30Rnd_9x21_Mag_SMG_02", "", 1000, 100, ""},
            {"optic_Arco_blk_F", "", 1000, 100, ""},
            {"ACE_fieldDressing", "", 10, 1, ""},
            {"ACE_elasticBandage", "", 10, 1, ""},
            {"ACE_quikclot", "", 10, 1, ""},
            {"ACE_atropine", "", 10, 1, ""},
            {"ACE_adenosine", "", 10, 1, ""},
            {"ACE_Banana", "", 10, 1, ""},
            {"ACE_CableTie", "", 10, 1, ""},
            {"ACE_bloodIV_250", "", 10, 1, ""},
            {"ACE_EarPlugs", "", 10, 1, ""},
            {"ACE_epinephrine", "", 10, 1, ""},
            {"ACE_packingBandage", "", 10, 1, ""},
            {"ACE_morphine", "", 10, 1, ""},
            {"L_Item_WaterBottleFull", "", 10, 1, ""},
            {"tf_anprc148jem_1", "", 10, 1, ""},
            {"NVGoggles", "", 100, 10, ""}
        };
    };
};
