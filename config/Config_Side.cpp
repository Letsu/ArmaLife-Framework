/*
 * Author: Johannes "Letus" Bindriem
 *
 *
 *
 *
 */
class Config_Side {
    avabileSides[] = {"civ", "cop", "medic"}; //Need all Sides that are Configure whit the Config Name

    class civ { //defualt Sides
        Var = "civ";
        DisplayName = "Civilian"; //Add Stringtable
        Init = "";
        Condition = ""; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

    class cop {
        Var = "cop";
        DisplayName = "Police"; //Add Stringtable
        Init = "lts_cop_fnc_initCop";
        Condition = "lts_cop_level"; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

    class med {
        Var = "med";
        DisplayName = "Medic"; //Add Stringtable
        Init = "";
        Condition = "lts_med_level"; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

};
