class Config_Side {
    avabileSides[] = {"civ", "cop", "medic"}; //Need all Sides that are Configure whit the Config Name

    class civilian {
        Var = "civ";
        DisplayName = "Civilian"; //Add Stringtable

        Condition = ""; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

    class cop {
        Var = "cop";
        DisplayName = "Police"; //Add Stringtable

        Condition = "lts_cop_level"; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

    class medic {
        Var = "med";
        DisplayName = "Medic"; //Add Stringtable

        Condition = "lts_med_level"; //Need an global Variable player can join Side when the Value of the Variable isn´t 0 Empty when every playewr can join Side
    };

};
