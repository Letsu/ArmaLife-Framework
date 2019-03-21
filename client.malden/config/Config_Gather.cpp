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
    class apple {
        Range = 70;
        Item = "L_Item_Wood";
        Fields[] = {"spawn_test"};
        Condtion = "";
    };
};
