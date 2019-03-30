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
    class CivClothing {
        DisplayName = "Ziviler Kleiderladen";
        Condition = "";
        Uniforms[] = {
            "Kleidung",
            {"EF_HMARMY_1", "", 50, 10, ""},
            {"EF_MKJKT", "", 50, 10, ""},
            {"EF_M_jkt2", "", 50, 10, ""},
            {"EF_M_jkt22", "", 50, 10, ""},
            {"EF_M_jkt1", "", 50, 10, ""},
            {"EF_M_jkt2_2", "", 50, 10, ""},
            {"EF_M_jkt2_3", "", 50, 10, ""},
            {"EF_M_jkt32_2", "", 50, 10, ""},
            {"EF_M_jkt2_4", "", 50, 10, ""},
            {"EF_M_jkt4", "", 50, 10, ""},
            {"EF_M_jkt3", "", 50, 10, ""},
            {"EF_M_jkt42", "", 50, 10, ""},
            {"EF_HM_LPBPS", "", 50, 10, ""},
            {"EF_HM_LPBP", "", 50, 10, ""},
            {"EF_HM_LPBR", "", 50, 10, ""},
            {"EF_HM_LPBW", "", 50, 10, ""},
            {"EF_HM_LPB", "", 50, 10, ""},
            {"EF_HM_LPBL", "", 50, 10, ""},
            {"EF_HM_LPBPS2", "", 50, 10, ""},
            {"EF_HM_LPBP2", "", 50, 10, ""},
            {"EF_HM_LPBR2", "", 50, 10, ""},
            {"EF_HM_LPBW2", "", 50, 10, ""},
            {"EF_HM_LPB2", "", 50, 10, ""},
            {"EF_MX1", "", 50, 10, ""}
        };
        Anzuege[] = {
            "Anzüge",
            {"EF_suit_1", "", 120, 10, ""},
            {"EF_suit_2", "", 120, 10, ""},
            {"EF_suit_3", "", 120, 10, ""},
            {"EF_suit_4", "", 120, 10, ""},
            {"EF_suit_5", "", 120, 10, ""},
            {"EF_suit_6", "", 120, 10, ""},
            {"EF_suit_7", "", 120, 10, ""},
            {"EF_suit_8", "", 120, 10, ""},
            {"EF_suit_Y1", "", 120, 10, ""},
            {"EF_suit_Y2", "", 120, 10, ""},
            {"EF_suit_Y3", "", 120, 10, ""},
            {"EF_suit_Y4", "", 120, 10, ""},
            {"EF_suit_Y5", "", 120, 10, ""},
            {"EF_suit_Y6", "", 120, 10, ""}
        };
        Vest[] = {
            "Westen",
            {"V_Pocketed_black_F", "", 80, 10, ""},
            {"V_Pocketed_coyote_F", "", 80, 10, ""},
            {"V_Pocketed_olive_F", "", 80, 10, ""},
            {"V_Safety_blue_F", "", 50, 10, ""},
            {"V_Safety_orange_F", "", 50, 10, ""},
            {"V_Safety_yellow_F", "", 50, 10, ""}
        };
        Backpack[] = {
            "Rucksäcke",
            {"B_AssaultPack_blk", "", 80, 10, ""},
            {"B_AssaultPack_cbr", "", 80, 10, ""},
            {"B_AssaultPack_dgtl", "", 80, 10, ""},
            {"B_AssaultPack_rgr", "", 80, 10, ""},
            {"B_AssaultPack_ocamo", "", 80, 10, ""},
            {"B_AssaultPack_khk", "", 80, 10, ""},
            {"B_AssaultPack_mcamo", "", 80, 10, ""},
            {"B_FieldPack_blk", "", 210, 50, ""},
            {"B_FieldPack_cbr", "", 210, 50, ""},
            {"B_FieldPack_ocamo", "", 210, 50, ""},
            {"B_FieldPack_khk", "", 210, 50, ""},
            {"B_FieldPack_oli", "", 210, 50, ""},
            {"B_FieldPack_oucamo", "", 210, 50, ""},
            {"B_TacticalPack_blk", "", 290, 100, ""},
            {"B_TacticalPack_rgr", "", 290, 10, ""},
            {"B_TacticalPack_ocamo", "", 290, 10, ""},
            {"B_TacticalPack_mcamo", "", 290, 10, ""},
            {"B_TacticalPack_oli", "", 290, 10, ""},
            {"B_Kitbag_cbr", "", 380, 10, ""},
            {"B_Kitbag_rgr", "", 380, 10, ""},
            {"B_Kitbag_mcamo", "", 380, 10, ""},
            {"B_Kitbag_sgg", "", 380, 10, ""},
            {"B_Kitbag_tan", "", 380, 10, ""},
            {"TRYK_B_Coyotebackpack_BLK", "", 500, 200, ""},
            {"TRYK_B_Coyotebackpack", "", 500, 200, ""},
            {"TRYK_B_Coyotebackpack_OD", "", 500, 200, ""},
            {"TRYK_B_Coyotebackpack_WH", "", 500, 200, ""},
            {"TRYK_B_Coyotebackpack_BLK", "", 500, 200, ""},
            {"B_Carryall_cbr", "", 460, 10, ""},
            {"B_Carryall_ocamo", "", 460, 10, ""},
            {"B_Carryall_khk", "", 460, 10, ""},
            {"B_Carryall_mcamo", "", 460, 10, ""},
            {"B_Carryall_oli", "", 460, 10, ""},
            {"B_Carryall_oucamo", "", 460, 10, ""},
            {"B_Carryall_cbr", "", 460, 10, ""}
        };
    };

    class CivGen {
        DisplayName = "";
        Condition = "";
        Items[] = {
            "Items",
            {"ACE_EarPlugs", "", 2, -1, ""},
            {"ACE_Flashlight_XL50", "", 50, 10, ""},
            {"ACE_MapTools", "", 10, 5, ""},
            {"ItemMap", "", 10, 1, ""},
            {"ItemCompass", "", 10, 1, ""},
            {"Itemwatch", "", 10, 1, ""},
            {"ItemGPS", "", 10, 1, ""},
            {"Binocular", "", 10, 1, ""},
            {"L_Item_Wein", "", 10, 2, ""},
            {"L_Item_WaterBottleFull", "", 10, 2, ""}
        };
        Medic[] = {
            "Medizin",
            {"ACE_tourniquet", "", 50, 10, ""},
            {"ACE_fieldDressing", "", 10, 0, ""},
            {"ACE_elasticBandage", "", 10, 0, ""},
            {"ACE_quikclot", "", 10, 0, ""},
            {"ACE_packingBandage", "", 10, 0, ""}
        };
    };


    class CivWeapon {
        DisplayName = "";
        Condition = "";
        Clothing[] = {
            "Kleidung",
            {"U_Marshal", "", 200, 10, ""},
            {"U_Rangemaster", "", 200, 10, ""}
        };
        weapons[] = {
            "Waffen",
            {"hlc_Pistol_M11A1D", "", 21000, 15000, ""},
            {"hlc_13Rnd_9x19_B_P228", "", 200, 0, ""},
            {"hgun_Pistol_heavy_02_F", "", 10, -1, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 10, -1, ""},
            {"hlc_pistol_Mk25", "", 10, -1, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 10, -1, ""}
        };
    };

    class policeShop {
        DisplayName = "Polizei Dienst Ausrüstung";
        Condition = " !(lts_core_curSide isEqualTo ""cop"") ";
        Clothing[] = {
            "Kleidung",
            {"police_0", "", 10, 1, ""},
            {"police_1", "", 10, 1, ""},
            {"police_2", "", 10, 1, ""},
            {"police_3", "", 10, 1, ""},
            {"police_4", "", 10, 1, ""},
            {"police_5", "", 10, 1, ""},
            {"police_6", "", 10, 1, ""},
            {"police_7", "", 10, 1, ""},
            {"police_8", "", 10, 1, ""},
            {"police_9", "", 10, 1, ""},
            {"police_10", "", 10, 1, ""},
            {"police_11", "", 10, 1, ""},
            {"police_12", "", 10, 1, ""},
            {"police_13", "", 10, 1, ""}
        };
        Vest[] = {
            "Westen",
            {"Cadet", "", 10, 1, ""},
            {"Fbi", "", 10, 1, ""},
            {"Inspector", "", 10, 1, ""},
            {"Instructor", "", 10, 1, ""},
            {"police", "", 10, 1, ""},
            {"sheriff", "", 10, 1, ""},
            {"trainee", "", 10, 1, ""}
        };
        Backpack[] = {
            "Rucksäcke",
            {"B_TacticalPack_blk", "", 10, 1, ""},
            {"TRYK_B_Carryall_blk", "", 10, 1, ""},
            {"TRYK_B_Kitbag_blk", "", 10, 1, ""},
            {"TRYK_B_BAF_BAG_BLK", "", 10, 1, ""}
        };
        Weapon[] = {
            "Waffen",
            {"CSW_M26C", "", 10, 1, ""},
            {"CSW_Taser_Probe_Mag", "", 10, 1, ""},
            {"hlc_pistol_P226US", "", 10, 1, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 10, 1, ""},
            {"hlc_smg_mp5k_PDW", "", 10, 1, ""},
            {"hlc_30Rnd_9x19_B_MP5", "", 10, 1, ""},
            {"CSW_M870", "", 10, 1, ""},
            {"CSW_M870_8Rnd_buck", "", 10, 1, ""},
            {"CSW_M870_8Rnd_stun", "", 10, 1, ""},
            {"hlc_rifle_m14sopmod", "", 10, 1, ""},
            {"hlc_20Rnd_762x51_B_M14", "", 10, 1, ""},
            {"CSW_FN57_Ballistic_Shield", "", 10, 1, ""},
            {"CSW_FN57_Shield_P", "", 10, 1, ""},
            {"optic_ACO_grn", "", 10, 1, ""},
            {"ACE_optic_Hamr_PIP", "", 10, 1, ""},
            {"optic_AMS", "", 10, 1, ""},
            {"acc_flashlight", "", 10, 1, ""},
            {"acc_pointer_IR", "", 10, 1, ""}
        };
        Items[] = {
            "Items",
            {"ItemMap", "", 10, 1, ""},
            {"ItemCompass", "", 10, 1, ""},
            {"Itemwatch", "", 10, 1, ""},
            {"ItemGPS", "", 10, 1, ""},
            {"Binocular", "", 10, 1, ""},
            {"ACE_fieldDressing", "", 10, 1, ""},
            {"ACE_elasticBandage", "", 10, 1, ""},
            {"ACE_quikclot", "", 10, 1, ""},
            {"ACE_packingBandage", "", 10, 1, ""},
            {"ACE_tourniquet", "", 10, 1, ""},
            {"ACE_CableTie", "", 10, 1, ""},
            {"ACE_EarPlugs", "", 10, 1, ""},
            {"ACE_M84", "", 10, 1, ""},
            {"TFAR_anprc152", "", 10, 1, ""},
            {"ACE_NVG_Wide", "", 10, 1, ""}
        };
    };

    class medicShop {
        DisplayName = "Medic Dienst Ausrüstung";
        Condition = " !(lts_core_curSide isEqualTo ""med"") ";
        Clothing[] = {
            "Kleidung",
            {"EF_MKJKT_EMS", "", 10, 1, ""},
            {"EF_MKJKT_EMS2", "", 10, 1, ""},
            {"EF_M_EMS_U", "", 10, 1, ""}
        };
        Backpack[] = {
            "Rucksäcke",
            {"B_TacticalPack_blk", "", 10, 1, ""},
            {"TRYK_B_Carryall_blk", "", 10, 1, ""},
            {"TRYK_B_Kitbag_blk", "", 10, 1, ""}
        };
        Items[] = {
            "Items",
            {"ItemMap", "", 10, 1, ""},
            {"ItemCompass", "", 10, 1, ""},
            {"Itemwatch", "", 10, 1, ""},
            {"ItemGPS", "", 10, 1, ""},
            {"Binocular", "", 10, 1, ""},
            {"ACE_EarPlugs", "", 10, 1, ""},
            {"ACE_NVG_Wide", "", 10, 1, ""}
        };
        Medic[] = {
            "Medic",
            {"ACE_fieldDressing", "", 10, 1, ""},
            {"ACE_elasticBandage", "", 10, 1, ""},
            {"ACE_quikclot", "", 10, 1, ""},
            {"ACE_packingBandage", "", 10, 1, ""},
            {"ACE_adenosine", "", 10, 1, ""},
            {"ACE_atropine", "", 10, 1, ""},
            {"ACE_bloodIV", "", 10, 1, ""},
            {"ACE_bloodIV_250", "", 10, 1, ""},
            {"ACE_bloodIV_500", "", 10, 1, ""},
            {"ACE_bodyBag", "", 10, 1, ""},
            {"ACE_epinephrine", "", 10, 1, ""},
            {"ACE_morphine", "", 10, 1, ""},
            {"ACE_surgicalKit", "", 10, 1, ""},
            {"ACE_tourniquet", "", 10, 1, ""}
        };
    };



    class Glass {
        DisplayName = "Glasshändler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_Glass", "", 1000, 60, ""}
        };
    };

    class Wood {
        DisplayName = "Holz Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_Board", "", 800, 80, ""}
        };
    };

    class Copper {
        DisplayName = "Kupfer Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_CopperBare", "", 1200, 70, ""}
        };
    };

    class Trauben {
        DisplayName = "Saft Laden";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_TraubenSaft", "", 1200, 5, ""}
        };
    };


    class Spiritossen {
        DisplayName = "Spiritossen Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_Oliven", "", 5, 3, ""}
        };
    };

    class oel {
        DisplayName = "Spiritossen Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_fuel", "", 5, 210, ""}
        };
    };

    class treibgut {
        DisplayName = "Treibgut Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_treib", "", 5, 70, ""}
        };
    };


};
