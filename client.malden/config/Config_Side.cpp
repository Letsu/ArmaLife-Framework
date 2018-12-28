/*
 * Author: Johannes "Letus" Bindriem
 * Config to define Sides. Every Side need to define in this config and in the Var avabileSides Change to this Side.
 * The Class Civ need to Exist!!
 *
 * Var = var need to be the Config name //Maybe delete this!
 * DisplayName = The Display Name of the Side
 * Init = an Init file that call on change to this side
 * Condition = Condition need an Variable that is over 0 to Change to this side //Maybe change to an normal true false Condtion
 *
 */
class Config_Side {
    avabileSides[] = {"civ", "cop", "med"}; //Need all Sides that are Configure whit the Config Name //Maybe delete this

    class civ { //defualt Side
        Var = "civ";
        DisplayName = "Civilian"; //Add Stringtable
        Init = "";
        Condition = ""; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

    class cop {
        Var = "cop";
        DisplayName = "Police"; //Add Stringtable
        Init = "lts_cop_fnc_init";
        Condition = "lts_cop_level"; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

    class med {
        Var = "med";
        DisplayName = "Medic"; //Add Stringtable
        Init = "lts_med_fnc_init";
        Condition = "lts_med_level"; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

};
