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
};
