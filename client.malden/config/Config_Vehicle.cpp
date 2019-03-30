/*
 * Author: Johannes "Letus" Bindriem
 *
 *
 *
 *
 *
*/
class Config_Vehicle {
    class vehShop_01 {
        DisplayName = "Fahrzeuge"; //Name of Shop
        Condtion = "!(([""drive_B""] call lts_fnc_hasLicense) select 0)"; // Condition to open
        Bikes[] = {
            "Motorräder",
            {"d3s_Aprilia_Tuono_V4_1100_RR", 18000, ""},
            {"d3s_BMW_S_1000_RR", 8000, ""},
            {"d3s_Ducati_Monster_1200_S", 10000, ""},
            {"d3s_Ducati_XDiavel_S", 23000, ""},
            {"d3s_Kawasaki_Ninja_H2R", 35000, ""},
            {"d3s_Kawasaki_Z800", 9000, ""},
            {"d3s_Kawasaki_ZX7RR", 4500, ""},
            {"d3s_KTM_1290_Super_Duke", 12000, ""},
            {"V12_KTM", 10000, ""},
            {"d3s_Suzuki_GSX_R_1000", 18000, ""},
            {"V12_CRF450SGEND", 9000, ""},
            {"d3s_Suzuki_Hayabusa", 16000, ""},
            {"V12_YFZ450_BLEU", 12500, ""}
        };
        AlfaRomeo[] = {
            "Alfa Romeo",
            {"d3s_giulia_quad_16", 33000, ""},
            {"d3s_giulietta_16", 20000, ""}
        };
        AstonMartin[] = {
            "Aston Martin",
            {"d3s_rapide_10", 100000, ""}
        };
        Audi[] = {
            "Audi",
            {"V12_RS3_BLEU", 15000, ""},
            {"V12_RS609_BLEU", 18000, ""},
            {"V12_RS6AV_BLANC", 23000, ""}
        };
        Bentley[] = {
            "Bentley",
            {"d3s_bentayga_18", 85000, ""},
            {"d3s_continentalGT_18", 90000, ""}
        };
        BMW[] = {
            "BMW",
            {"d3s_f87_17", 40000, ""},
            {"d3s_e38_98", 5000, ""},
            {"d3s_f87_17_ACH", 60000, ""},
            {"d3s_amazing_ACS8_17_IND", 125000, ""},
            {"V12_E46_BLEU", 15500, ""},
            {"V12_GTS3", 70000, ""},
            {"V12_135i_BLEU", 22000, ""},
            {"d3s_f87_17_m", 55000, ""},
            {"d3s_f87_17_EX", 69000, ""},
            {"d3s_f80_14", 16000, ""},
            {"d3s_f80_14_SE", 23000, ""},
            {"d3s_f80_14_GTS", 50000, ""},
            {"d3s_f82_14_LB", 80000, ""},
            {"d3s_amazing_f82_16", 75000, ""},
            {"d3s_e60_09", 19500, ""},
            {"d3s_f10_12", 10000, ""},
            {"d3s_f90_18", 16000, ""},
            {"d3s_f90_18_FE", 130000, ""},
            {"d3s_f90_18_m", 25000, ""},
            {"d3s_f10_12_EX", 34000, ""},
            {"d3s_f13_13", 39000, ""},
            {"d3s_f85_15_m", 35000, ""},
            {"d3s_f86_15_OFF", 55000, ""},
            {"d3s_f86_15_m", 66000, ""},
            {"d3s_e89_12", 80000, ""},
            {"V12_Z4", 81000, ""},
            {"d3s_f80_14_EX2", 65000, ""},
            {"d3s_f80_14_EX3", 70000, ""},
            {"d3s_e60_09_EX", 58000, ""}
        };

        Brabus[] = {
            "Brabus",
            {"d3s_g800_17", 65000, ""}
        };

        Buick[] = {
            "Buick",
            {"d3s_skylark_52", 150000, ""}
        };

        Cadillac[] = {
            "Cadillac",
            {"d3s_ctsv_16", 85000, ""},
            {"V12_ESCALADE2", 70000, ""}
        };

        Camaro[] = {
            "Camaro",
            {"d3s_camaro_16", 36000, ""},
            {"d3s_camaro_zl1_17", 68000, ""},
            {"d3s_camaro_zl1_1le_18", 81000, ""},
            {"d3s_malibu_18", 32000, ""},
            {"d3s_malibu_18_red", 35000, ""},
            {"d3s_tahoe_08", 25000, ""},
            {"d3s_tahoe_EX", 32000, ""}
        };

        Chrysler[] = {
            "Chrysler",
            {"d3s_300C_12", 35000, ""}
        };

        VW[] = {
            "VW",
            {"V12_CORRADO_BLEU", 4500, ""},
            {"V12_MK22", 9000, ""},
            {"d3s_beetle_04", 6000, ""},
            {"V12_SCIROCCOGT2", 7000, ""},
            {"V12_MK22", 9000, ""}
        };

        Dodge[] = {
            "Dodge",
            {"d3s_charger_15", 45000, ""},
            {"d3s_srthellcat_15", 58000, ""},
            {"V12_RT", 50000, ""},
            {"d3s_durango_18", 50000, ""},
            {"d3s_durango_18_SRT", 61000, ""},
            {"V12_RAM6X6_BLANC", 73000, ""},
            {"V12_RAM_BLANC", 62000, ""}
        };

        Ferrari[] = {
            "Ferrari",
            {"d3s_LaFerrari_14", 1200000, ""}
        };

        Ford[] = {
            "Ford",
            {"d3s_crown_98", 7500, ""},
            {"d3s_explorer_13", 13500, ""},
            {"d3s_explorer_sport_13", 20000, ""},
            {"d3s_raptor_SCR_17", 35000, ""},
            {"d3s_raptor_17", 25000, ""},
            {"d3s_fseries_17", 28000, ""},
            {"d3s_fiesta_16", 12500, ""},
            {"d3s_focus_17", 15000, ""},
            {"d3s_focus_17_LB", 25000, ""},
            {"d3s_focus_14", 18000, ""},
            {"V12_VELOCIRAPTOR_BLANC", 31000, ""},
            {"d3s_model_a", 20000, ""},
            {"d3s_boss_15", 75000, ""},
            {"d3s_taurus_eco_10", 16000, ""}
        };

        GMC[] = {
            "GMC",
            {"d3s_savana_05", 15000, ""},
            {"d3s_savana_VAN", 15000, ""}
        };

        Honda[] = {
            "Honda",
            {"d3s_civic_17", 16000, ""},
            {"V12_CIVIC_BLEU", 12000, ""},
            {"V12_S2000_BLEU", 25000, ""}
        };

        Hudson[] = {
            "Hudson",
            {"d3s_hornet_52", 150000, ""}
        };

        Infiniti[] = {
            "Infiniti",
            {"d3s_q50_14", 21000, ""},
            {"d3s_q50_ER_14", 24000, ""},
            {"d3s_qx56_13", 19000, ""},
            {"d3s_qx56_13_SE", 23000, ""},
            {"d3s_qx56_13_EX", 30000, ""},
            {"d3s_QX60_16", 24000, ""},
            {"d3s_QX60_16_S", 26000, ""}
        };

        Jaguar[] = {
            "Jaguar",
            {"d3s_fpace_17_r", 60000, ""},
            {"d3s_fpace_17_s", 67000, ""},
            {"d3s_xe_15", 43000, ""},
            {"d3s_xes_15", 45000, ""},
            {"d3s_xesv_17", 48000, ""}
        };

        Jeep[] = {
            "Jeep",
            {"d3s_cherokee_18", 50000, ""}
        };

        Lada[] = {
            "Lada",
            {"d3s_vesta_15", 9500, ""},
            {"d3s_vesta_15_turbo", 12000, ""}
        };

        Lamborghini[] = {
            "Lamborghini",
            {"d3s_asterion_15", 900000, ""},
            {"d3s_lm002_90", 245000, ""},
            {"V12_SESTO3", 2100000, ""},
            {"d3s_urus_12", 200000, ""},
            {"d3s_urus_18", 260000, ""}
        };

        Lexus[] = {
            "Lexus",
            {"d3s_is_16", 36000, ""},
            {"d3s_lx570_16", 120000, ""}
        };

        Mercedes[] = {
            "Mercedes",
            {"d3s_g65amg_Mansory", 320000, ""},
            {"d3s_lx570_16", 120000, ""},
            {"d3s_amazing_a45_16", 25000, ""},
            {"d3s_amazing_a45_16_EX", 29000, ""},
            {"d3s_C63_14", 61000, ""},
            {"d3s_C63S_14", 65000, ""},
            {"d3s_g63amg_16", 147000, ""},
            {"d3s_g63amg_18", 152000, ""},
            {"d3s_g65amg_16", 222000, ""},
            {"d3s_gle43amg_15", 93000, ""},
            {"d3s_gle63amgS_15", 106000, ""},
            {"d3s_amgGT_15", 127000, ""},
            {"d3s_amgGTR_15", 165000, ""},
            {"d3s_C180_14", 65000, ""},
            {"d3s_C300_14", 47000, ""},
            {"d3s_C450_15", 74000, ""},
            {"d3s_cla_14", 31000, ""},
            {"d3s_cla_15", 35000, ""},
            {"d3s_cla_250_14", 30000, ""},
            {"d3s_cla_250_15", 33000, ""},
            {"d3s_cla_45amg_14", 40000, ""},
            {"d3s_cla_45amg_15", 45000, ""},
            {"d3s_e220_16", 44000, ""},
            {"d3s_e350_16", 46000, ""},
            {"d3s_w212_13", 100000, ""},
            {"d3s_w212s_13", 110000, ""},
            {"d3s_w212s_13_EX", 112000, ""},
            {"d3s_g350d_15", 50000, ""},
            {"d3s_g500_18", 95000, ""},
            {"d3s_gl63amg_12", 140000, ""},
            {"d3s_gl63amg_12_SE", 148000, ""},
            {"d3s_ml350_09", 65000, ""},
            {"d3s_s600_14", 85000, ""},
            {"d3s_s600_17", 86000, ""},
            {"d3s_vklasse_17", 34000, ""},
            {"d3s_s560_18", 144000, ""},
            {"d3s_vv222_18", 240000, ""},
            {"V12_CL652", 42000, ""},
            {"V12_GL63AMG_BLEUF", 140000, ""},
            {"d3s_gls63_17", 140000, ""}
        };

        Mini[] = {
            "Mini",
            {"d3s_clubman_11", 23600, ""},
            {"d3s_coupeconcept_10", 26000, ""}
        };

        Mitsubishi[] = {
            "Mitsubishi",
            {"d3s_pajero_07_38", 30000, ""},
            {"d3s_coupeconcept_10", 26000, ""}
        };

        Nissan[] = {
            "Nissan",
            {"V12_S15_BLEU", 15000, ""},
            {"d3s_silvia_s15_02", 12000, ""},
            {"V12_R34M_BLEU", 280000, ""},
            {"d3s_titan_17", 35000, ""}
        };

        Porsche[] = {
            "Porsche",
            {"V12_CARRERA_S_BLEU", 112000, ""},
            {"d3s_cayenne_16", 74000, ""},
            {"d3s_cayenne_turbo_16", 76000, ""},
            {"d3s_macan_16", 58000, ""}
        };

        RangeRover[] = {
            "Range Rover",
            {"d3s_evoque_16", 25000, ""},
            {"d3s_svr_17_SD4", 66000, ""},
            {"d3s_svr_17_CHARGED", 70000, ""},
            {"V12_SVR_BLANC", 58000, ""}
        };

        Renault[] = {
            "Renault",
            {"V12_V6_BLEU", 12000, ""},
            {"d3s_svr_17_SD4", 66000, ""},
            {"d3s_svr_17_CHARGED", 70000, ""},
            {"V12_SVR_BLANC", 58000, ""}
        };

        Seat[] = {
            "Seat",
            {"V12_CUPRA2", 18000, ""},
            {"d3s_cullinan_19_II", 330000, ""},
            {"d3s_cullinan_19_FE", 380000, ""},
            {"d3s_ghost_18_EWB", 283000, ""},
            {"d3s_novus_phantom_18", 446000, ""}
        };

        Skoda[] = {
            "Skoda",
            {"d3s_kodiaq_17", 39000, ""}
        };

        Subaru[] = {
            "Subaru",
            {"d3s_wrx_17", 45000, ""},
            {"d3s_wrx_17_FnF8", 50000, ""}
        };

        Toyota[] = {
            "Toyota",
            {"d3s_200_16_EX", 28000, ""},
            {"d3s_200_VX_16", 29000, ""},
            {"V12_AE86_BLEU", 6000, ""}
        };

        RollsRocyce[] = {
            "Rolls Rocyce",
            {"d3s_cullinan_19", 315000, ""},
            {"d3s_cullinan_19_II", 330000, ""},
            {"d3s_cullinan_19_FE", 380000, ""},
            {"d3s_ghost_18_EWB", 283000, ""},
            {"d3s_novus_phantom_18", 446000, ""}
        };

        Maserati[] = {
            "Maserati",
            {"d3s_alfieri_14", 150000, ""},
            {"d3s_ghibli_14", 69000, ""},
            {"d3s_ghibli_esteso_14", 65000, ""},
            {"d3s_ghibli_14_q4", 62000, ""},
            {"d3s_levante_17", 74000, ""},
            {"d3s_levante_s_17_mat", 82000, ""},
            {"d3s_levante_17", 74000, ""},
            {"d3s_levante_17", 74000, ""},
            {"d3s_lx570_16", 120000, ""}
        };

        Uaz[] = {
            "Uaz",
            {"d3s_uaz_469P", 30000, ""},
            {"d3s_uaz_3162", 19000, ""}
        };

        Other[] = {
            "Sonstige",
            {"d3s_oka", 4000, ""},
            {"d3s_willys", 15000, ""}
        };
    };

    class heli {
        DisplayName = "Helicopter"; //Name of Shop
        Condtion = " "; // Condition to open
        Helicopter[] = {
            "Helicopter",
            {"C_Heli_Light_01_civil_F", 3500000, ""},
            {"d3s_AS_365", 10000000, ""}
        };

        plane[] = {
            "Flugzeuge",
            {"C_Plane_Civil_01_F", 2500000, ""}
        };
    };

    class lkw {
        DisplayName = "LKW"; //Name of Shop
        Condtion = " "; // Condition to open
        Lkw[] = {
            "Lkw",
            {"B_Boat_Transport_01_F", 2500, ""},
            {"C_Boat_Civil_01_F", 6800, ""},
            {"I_C_Boat_Transport_02_F", 16000, ""},
            {"C_Scooter_Transport_01_F", 5000, ""},
            {"B_SDV_01_F", 230000, ""}
        };
    };

    class boots {
        DisplayName = "Helicopter"; //Name of Shop
        Condtion = " "; // Condition to open
        Boots[] = {
            "Boote",
            {"B_Boat_Transport_01_F", 2500, ""},
            {"C_Boat_Civil_01_F", 6800, ""},
            {"I_C_Boat_Transport_02_F", 16000, ""},
            {"C_Scooter_Transport_01_F", 5000, ""},
            {"B_SDV_01_F", 230000, ""}
        };
    };


    class policeCar {
        DisplayName = "Polizei Fahrzeuge"; //Name of Shop
        Condtion = " !(lts_core_curSide isEqualTo ""cop"") "; // Condition to open
        Vehicles[] = {
            "Polizei Fahrzeuge",
            {"Fox_2003Impala_PoliceHWP", 10, ""},
            {"fox_Tahoe_PoliceINT", 10, ""},
            {"Fox_F550_ESU", 10, ""},
            {"Fox_CrownVictoria_NYPD", 10, ""},
            {"Fox_CrownVictoria_PoliceUnMarked", 10, ""},
            {"Fox_2015Tahoe_HWP", 10, ""},
            {"Fox_Impala16_NYPD", 10, ""},
            {"Fox_Charger16_HWP", 10, ""},
            {"Fox_Explorer16", 10, ""},
            {"Fox_Taurus16_HWP", 10, ""}
        };
    };

    class medCar {
        DisplayName = "Medic Fahrzeuge"; //Name of Shop
        Condtion = " !(lts_core_curSide isEqualTo ""med"") "; // Condition to open
        Vehicles[] = {
            "Feuerwehr Fahrzeuge",
            {"Fox_HeavyRescue", 10, ""},
            {"fox_Tahoe_FD", 10, ""},
            {"Fox_Silverado", 10, ""},
            {"Fox_ArrowXTLadder", 10, ""},
            {"Fox_Firetruck", 10, ""},
            {"Fox_Stretcher_Base", 10, ""}
        };
    };
};
