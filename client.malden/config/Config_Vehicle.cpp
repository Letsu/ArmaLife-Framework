/*
 * Author: Johannes "Letus" Bindriem
 *
 *
 *
 *
 *
*/
class Config_Vehicle {
    class vehicle_shop_test_01 {
        DisplayName = "Test Shop 1"; //Name of Shop
        Condtion = ""; // Condition to open
        Vehicles[] = {
            {"C_Offroad_01_F", 10, ""}
        };
    };

    class policeCar {
        DisplayName = "Polizei Fahrzeuge"; //Name of Shop
        Condtion = "!(lts_core_curSide isEqualTo ""cop"") "; // Condition to open
        Vehicles[] = {
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
};
