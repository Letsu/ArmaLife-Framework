class Config_Process {
    class Glass {
        Var = "Glass";
        DisplayName = "Glass wird Verarbeitet";
        From = "L_Item_Sand"; //Check Item Name
        To = "L_Item_Glass"; //Need to add Item
        Time = 0.3;
    };

    class Wood {
        Var = "Wood";
        DisplayName = "Holz wird Verarbeitet";
        From = "L_Item_Wood"; //Check Item Name
        To = "L_Item_Board"; //Need to add Item
        Time = 0.5;
    };

    class Cooper {
        Var = "Copper";
        DisplayName = "Kupfer wird Verarbeitet";
        From = "L_Item_Copper"; //Check Item Name
        To = "L_Item_CopperBare"; //Need to add Item
        Time = 0.4;
    };

    class Trauben {
        Var = "Trauben";
        DisplayName = "Trauben werden Verarbeitet";
        From = "L_Item_Trauben"; //Check Item Name
        To = "L_Item_TraubenSaft"; //Need to add Item
        Time = 0.4;
    };

    class oel {
        Var = "oel";
        DisplayName = "Öl wird Verarbeitet";
        From = "L_Item_oel"; //Check Item Name
        To = "L_Item_fuel"; //Need to add Item
        Time = 0.4;
    };

    class kelterei {
        Var = "kelterei";
        DisplayName = "Wein wird Verarbeitet";
        From = "L_Item_WeinTrauben"; //Check Item Name
        To = "L_Item_Wein"; //Need to add Item
        Time = 0.4;
    };
};
