/*
 * Author: Johannes "Letus" Bindriem
 * Config to Define all Gather and Mining Field on the Map
 *
 * Range = Size of the Field
 * Item = Item you get when you Farm or Mine
 * Fields = Array whit all Markers where an Field schould be
 * FarmingItem = Item you need in Inventory to Farm at this Field !! Not Working at the Moment
 *
 * For Futur: Condtion to Farm
 */
class Config_Gather {
    class sand {
        Range = 70;
        Item = "L_Item_Sand";
        Fields[] = {"Sandgrube1"};
        Condtion = "";
    };

    class trees {
        Range = 70;
        Item = "L_Item_Wood";
        Fields[] = {"Wald1", "Wald1_2", "Wald1_3"};
        Condtion = "";
    };

    class copper {
        Range = 70;
        Item = "L_Item_Copper";
        Fields[] = {"Kupfer1"};
        Condtion = "";
    };

    class oliven {
        Range = 70;
        Item = "L_Item_Oliven";
        Fields[] = {"Oliven1"};
        Condtion = "";
    };

    class trauben {
        Range = 70;
        Item = "L_Item_Trauben";
        Fields[] = {"Trauben1", "Trauben1_2", "Trauben1_3"};
        Condtion = "";
    };

    class erdoel {
        Range = 70;
        Item = "L_Item_oel";
        Fields[] = {"erdoel1"};
        Condtion = "";
    };

    class treibgut {
        Range = 70;
        Item = "L_Item_treib";
        Fields[] = {"treibgut1"};
        Condtion = "";
    };
};
