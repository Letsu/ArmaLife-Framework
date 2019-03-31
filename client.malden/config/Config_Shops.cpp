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
            {"L_Item_WaterBottleFull", "", 10, 2, ""},
            {"L_Item_Rigel", "", 10, 2, ""}
        };
        Medic[] = {
            "Medizin",
            {"ACE_tourniquet", "", 50, 10, ""},
            {"ACE_fieldDressing", "", 10, 0, ""},
            {"ACE_elasticBandage", "", 10, 0, ""},
            {"ACE_quikclot", "", 10, 0, ""},
            {"ACE_packingBandage", "", 10, 0, ""}
        };
        Funk[] = {
            "Funk Ausrüstung",
            {"TFAR_anprc152", "", 560, 250}
        };
    };


    class CivWeapon {
        DisplayName = "Waffen Laden";
        Condition = "!(([""weapon""] call lts_fnc_hasLicense) select 0)";
        Clothing[] = {
            "Kleidung",
            {"U_Marshal", "", 200, 10, ""},
            {"U_Rangemaster", "", 200, 10, ""}
        };
        weapons[] = {
            "Waffen",
            {"hlc_Pistol_M11A1D", "", 25000, 15000, ""},
            {"hlc_13Rnd_9x19_B_P228", "", 200, 0, ""},
            {"hgun_Pistol_heavy_02_F", "", 21000, -1, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 13000, -1, ""},
            {"hlc_pistol_Mk25", "", 24000, -1, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 13000, -1, ""}
        };
    };

    class policeShop {
        DisplayName = "Polizei Dienst Ausrüstung";
        Condition = " !(lts_core_curSide isEqualTo ""cop"") ";
        Clothing[] = {
            "Kleidung",
            {"police_0", "", 0, 0, ""},
            {"police_1", "", 0, 0, ""},
            {"police_2", "", 0, 0, ""},
            {"police_3", "", 0, 0, ""},
            {"police_4", "", 0, 0, ""},
            {"police_5", "", 0, 0, ""},
            {"police_6", "", 0, 0, ""},
            {"police_7", "", 0, 0, ""},
            {"police_8", "", 0, 0, ""},
            {"police_9", "", 0, 0, ""},
            {"police_10", "", 0, 0, ""},
            {"police_11", "", 0, 0, ""},
            {"police_12", "", 0, 0, ""},
            {"police_13", "", 0, 0, ""}
        };
        Vest[] = {
            "Westen",
            {"Cadet", "", 0, 0, ""},
            {"Fbi", "", 0, 0, ""},
            {"Inspector", "", 0, 0, ""},
            {"Instructor", "", 0, 0, ""},
            {"police", "", 0, 0, ""},
            {"sheriff", "", 0, 0, ""},
            {"PoliceY", "", 0, 0, ""},
            {"trainee", "", 0, 0, ""}
        };
        Backpack[] = {
            "Rucksäcke",
            {"B_TacticalPack_blk", "", 0, 0, ""},
            {"TRYK_B_Carryall_blk", "", 0, 0, ""},
            {"TRYK_B_Kitbag_blk", "", 0, 0, ""},
            {"TRYK_B_BAF_BAG_BLK", "", 0, 0, ""},
            {"TFAR_rt1523g_big", "", 0, 0, ""}
        };
        head[] = {
            "Kopfbedeckung",
            {"H_Beret_blk", "", 0, 0, ""},
            {"H_Beret_02", "", 0, 0, ""},
            {"H_Beret_Colonel", "", 0, 0, ""},
            {"H_Beret_gen_F", "", 0, , ""},
            {"H_Cap_police", "", 0, 0, ""},
            {"H_Watchcap_blk", "", 0, 0, ""},
            {"H_Cap_headphones", "", 0, 0, ""},
            {"TAC_SF10H", "", 0, 0, ""},
            {"H_CrewHelmetHeli_B", "", 0, 0, ""}
        };
        pistol[] = {
            "Pistolen",
            {"CSW_FN57", "", 0, 0, ""},
            {"optic_Yorris", "", 0, 0, ""},
            {"CSW_FN57_flashlight_normal_1", "", 0, 0, ""},
            {"hlc_Pistol_M11", "", 0, 0, ""},
            {"hlc_13Rnd_9x19_B_P228", "", 0, 0, ""},
            {"HLC_optic228_ATT", "", 0, 0, ""},
            {"hlc_pistol_Mk25", "", 0, 0, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 0, 0, ""},
            {"HLC_optic228_ATT", "", 0, 0, ""},
            {"hlc_pistol_P226R", "", 0, 0, ""},
            {"hlc_15Rnd_9x19_B_P226", "", 0, 0, ""},
            {"HLC_optic228_ATT", "", 0, 0, ""}
        };
        SMG[] = {
            "SMG",
            {"hlc_smg_mp510", "", 0, 0, ""},
            {"hlc_30Rnd_10mm_B_MP5", "", 0, 0, ""},
            {"optic_Aco", "", 0, 0, ""},
            {"acc_flashlight", "", 0, 0, ""},
            {"hlc_smg_mp5a4", "", 0, 0, ""},
            {"hlc_pistol_P226R", "", 0, 0, ""},
            {"optic_Aco", "", 0, 0, ""},
            {"acc_flashlight", "", 0, 0, ""}
        };
        Rifle[] = {
            "Strumgewehre",
            {"hlc_smg_mp5sd5", "", 0, 0, ""},
            {"hlc_30Rnd_9x19_B_MP5", "", 0, 0, ""},
            {"optic_Aco", "", 0, 0, ""},
            {"optic_Arco_blk_F", "", 0, 0, ""},
            {"acc_flashlight", "", 0, 0, ""},
            {"CSW_M870", "", 0, 0, ""},
            {"CSW_M870_8Rnd_buck", "", 0, 0, ""},
            {"CSW_M870_8Rnd_slug", "", 0, 0, ""},
            {"CSW_M870_8Rnd_stun", "", 0, 0, ""}
        };
        Items[] = {
            "Items",
            {"ItemMap", "", 0, 0, ""},
            {"ItemCompass", "", 0, 0, ""},
            {"Itemwatch", "", 0, 0, ""},
            {"ItemGPS", "", 0, 0, ""},
            {"Binocular", "", 0, 0, ""},
            {"ACE_fieldDressing", "", 0, 0, ""},
            {"ACE_CableTie", "", 0, 0, ""},
            {"ACE_EarPlugs", "", 0, 0, ""},
            {"ACE_M84", "", 0, 0, ""},
            {"TFAR_anprc152", "", 0, 0, ""},
            {"ACE_NVG_Wide", "", 0, 0, ""}
        };

        Medic[] = {
            "Medizinische Ausrüstung",
            {"ACE_fieldDressing", "", 0, 0, ""},
            {"ACE_elasticBandage", "", 0, , ""},
            {"ACE_quikclot", "", 0, 0, ""},
            {"ACE_packingBandage", "", 0, , ""},
            {"ACE_tourniquet", "", 0, 0, ""}
        };

        SEK[] = {
            "Sek",
            {"CSW_FN57_Ballistic_Shield", "", 0, 0, ""},
            {"CSW_FN57_flashlight_normal_1", "", 0, 0, ""},
            {"CSW_FN57_Shield_P", "", 0, 0, ""},
            {"CSW_CornerShot", "", 0, 0, ""},
            {"CSW_CornerShot_33Rnd_9x19_Tracer_Red", "", 0, 0, ""},
            {"ACE_M84", "", 0, 0, ""}
        } ;
    };

    class medicShop {
        DisplayName = "Medic Dienst Ausrüstung";
        Condition = " !(lts_core_curSide isEqualTo ""med"") ";
        Clothing[] = {
            "Kleidung",
            {"EF_MKJKT_EMS", "", 0, 0, ""},
            {"EF_MKJKT_EMS2", "", 0, 0, ""},
            {"EF_M_EMS_U", "", 0, 0, ""}
        };
        Backpack[] = {
            "Rucksäcke",
            {"B_TacticalPack_blk", "", 0, 0, ""},
            {"TRYK_B_Carryall_blk", "", 0, 0, ""},
            {"TRYK_B_Kitbag_blk", "", 0, 0, ""},
            {"TFAR_rt1523g_big", "", 0, 0, ""}
        };
        Items[] = {
            "Items",
            {"ItemMap", "", 0, 0, ""},
            {"ItemCompass", "", 0, 0, ""},
            {"Itemwatch", "", 0, 0, ""},
            {"ItemGPS", "", 0, 0, ""},
            {"Binocular", "", 0, 0, ""},
            {"ToolKit", "", 0, 0, ""},
            {"ACE_EarPlugs", "", 0, 0, ""},
            {"ACE_NVG_Wide", "", 0, 0, ""}
        };
        Medic[] = {
            "Medic",
            {"ACE_fieldDressing", "", 0, 0, ""},
            {"ACE_elasticBandage", "", 0, 0, ""},
            {"ACE_quikclot", "", 0, 0, ""},
            {"ACE_packingBandage", "", 0, 0, ""},
            {"ACE_adenosine", "", 0, 0, ""},
            {"ACE_atropine", "", 0, 0, ""},
            {"ACE_bloodIV", "", 0, 0, ""},
            {"ACE_bloodIV_250", "", 0, 0, ""},
            {"ACE_bloodIV_500", "", 0, 0, ""},
            {"ACE_bodyBag", "", 0, 0, ""},
            {"ACE_epinephrine", "", 0, 0, ""},
            {"ACE_morphine", "", 0, 0, ""},
            {"ACE_surgicalKit", "", 0, 0, ""},
            {"ACE_tourniquet", "", 0, 0, ""}
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
            {"L_Item_CopperBare", "", 90, 70, ""}
        };
    };

    class Trauben {
        DisplayName = "Saft Laden";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_TraubenSaft", "", 25, 5, ""}
        };
    };


    class Spiritossen {
        DisplayName = "Spiritossen Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_Oliven", "", 5, 3, ""},
            {"L_Item_Wein", "", 12, 9, ""}
        };
    };

    class oel {
        DisplayName = "Benzin Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_fuel", "", 340, 210, ""}
        };
    };

    class treibgut {
        DisplayName = "Treibgut Händler";
        Condition = "";
        Items[] = {
            "Items",
            {"L_Item_treib", "", 90, 70, ""}
        };
    };

    class fisch {
        DisplayName = "Fisch Händler";
        Condition = "";
        Items[] = {
            "Fisch",
            {"L_Item_treib", "", 90, 70, ""}
        };
    };

    class turtoise {
        DisplayName = "Schildkröten Händler";
        Condition = "";
        Items[] = {
            "Schildkröten",
            {"L_Item_treib", "", 90, 70, ""}
        };
    };


};
