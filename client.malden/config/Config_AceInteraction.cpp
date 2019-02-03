class ACE_Interaction {
};

class ACE_V_Interaction {
};
class ACE_P_Interaction {
    //---------------------------- Cop Bereich ----------------------------
    class COP_Menu {
        variable = "COP_Menu";
        displayName = "<t color='#0000ff'>Polizei Menü</t>";
        ACE_Menu = 0;
        Menu[] = {"ACE_MainActions"};
        icon = "";
        code = "";
        conditons = "side _player isEqualTo west && isPlayer _target;";

    };

	    class Absperrungen_Menu {
        variable = "Absperrungen_Menu";
        displayName = "Absperrung's Menu";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions"};
        icon = "";
        code = "";
        conditons = "side _player in [west, independent, east];";
    };


	class all_Menu {
        variable = "all_Menu";
        displayName = "Allgemeines Menu";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions"};
        icon = "";
        code = "";
        conditons = "side _player in [west, independent, civilian];";
    };

	    class RoadBarrierBig {
        variable = "RoadBarrierBig";
        displayName = "Absperrung (groß)";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions","Absperrungen_Menu"};
        icon = "";
        code = "_obj = ""RoadBarrier_F"" createVehicle (position player);[_obj, true, [0, 2, 0], 0] call ace_dragging_fnc_setCarryable; [player, _obj] call ace_dragging_fnc_carryObject; _action = [""Delete"", ""Delete"", """", {deleteVehicle _target}, {true}] call ace_interact_menu_fnc_createAction; [_obj, 0, [""ACE_MainActions""], _action] call ace_interact_menu_fnc_addActionToObject;";
        conditons = "side _player in [west, independent, east];";
    };


	class sicherheitsbarriere {
        variable = "sicherheitsbarriere";
        displayName = "sicherheitsbarriere";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions","Absperrungen_Menu"};
        icon = "";
        code = "_obj = ""Land_Crash_barrier_F"" createVehicle (position player);[_obj, true, [0, 2, 0], 0] call ace_dragging_fnc_setCarryable; [player, _obj] call ace_dragging_fnc_carryObject; _action = [""Delete"", ""Delete"", """", {deleteVehicle _target}, {true}] call ace_interact_menu_fnc_createAction; [_obj, 0, [""ACE_MainActions""], _action] call ace_interact_menu_fnc_addActionToObject;";
        conditons = "side _player in [west, independent, east];";
    };

    class RoadBarrierSmall {
        variable = "RoadBarrierSmall";
        displayName = "Absperrung (klein)";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions","Absperrungen_Menu"};
        icon = "";
        code = "_obj = ""RoadBarrier_small_F"" createVehicle (position player);[_obj, true, [0, 2, 0], 0] call ace_dragging_fnc_setCarryable; [player, _obj] call ace_dragging_fnc_carryObject; _action = [""Delete"", ""Delete"", """", {deleteVehicle _target}, {true}] call ace_interact_menu_fnc_createAction; [_obj, 0, [""ACE_MainActions""], _action] call ace_interact_menu_fnc_addActionToObject;";
        conditons = "side _player in [west, independent, east];";
    };

    class RoadConeL {
        variable = "RoadConeL";
        displayName = "Verkehrskegel (Lampe)";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions","Absperrungen_Menu"};
        icon = "";
        code = "_obj = ""RoadCone_L_F"" createVehicle (position player);[_obj, true, [0, 2, 0], 0] call ace_dragging_fnc_setCarryable; [player, _obj] call ace_dragging_fnc_carryObject; _action = [""Delete"", ""Delete"", """", {deleteVehicle _target}, {true}] call ace_interact_menu_fnc_createAction; [_obj, 0, [""ACE_MainActions""], _action] call ace_interact_menu_fnc_addActionToObject;";
        conditons = "side _player in [west, independent, east];";
    };

    class RoadCone {
        variable = "RoadCone";
        displayName = "Verkehrskegel";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions","Absperrungen_Menu"};
        icon = "";
        code = "_obj = ""RoadCone_F"" createVehicle (position player);[_obj, true, [0, 2, 0], 0] call ace_dragging_fnc_setCarryable; [player, _obj] call ace_dragging_fnc_carryObject; _action = [""Delete"", ""Delete"", """", {deleteVehicle _target}, {true}] call ace_interact_menu_fnc_createAction; [_obj, 0, [""ACE_MainActions""], _action] call ace_interact_menu_fnc_addActionToObject;";
        conditons = "side _player in [west, independent, east];";
    };

	class liege {
        variable = "liege";
        displayName = "Verkehrskegel";
        ACE_Menu = 1;
        Menu[] = {"ACE_SelfActions","Absperrungen_Menu"};
        icon = "";
        code = "_obj = ""Land_sleeping_bag_F"" createVehicle (position player);[_obj, true, [0, 2, 0], 0] call ace_dragging_fnc_setCarryable; [player, _obj] call ace_dragging_fnc_carryObject; _action = [""Delete"", ""Delete"", """", {deleteVehicle _target}, {true}] call ace_interact_menu_fnc_createAction; [_obj, 0, [""ACE_MainActions""], _action] call ace_interact_menu_fnc_addActionToObject;";
        conditons = "side _player isEqualTo independent;";
    };

    //---------------------------- Medic Bereich ----------------------------
    class Medic_Menu {
        variable = "Medic_Menu";
        displayName = "Medic Menu";
        ACE_Menu = 0;
        Menu[] = {"ACE_MainActions"};
        icon = "\z\ace\addons\medical\UI\icons\medical_crossRed.paa";
        code = "";
        conditons = "side _player isEqualTo independent && isPlayer _target;";
    };
    //---------------------------- Alle Spieler ----------------------------
/*
	class ausweis {
      variable = "ausweis";
      displayName = "Ausweis Zeigen";
      ACE_Menu = 0;
      Menu[] = {"ACE_MainActions"};
      icon = "";
      code = "[_target] call life_fnc_Lizenzzeigen;";
      conditons = "side _player in [west, independent, east, civilian];";
    };
	class fakeid1 {
      variable = "fakeid1";
      displayName = "Fake Ausweis Zeigen";
      ACE_Menu = 0;
      Menu[] = {"ACE_MainActions"};
      icon = "";
      code = "[_target] call life_fnc_fake1;";
      conditons = "side _player isEqualTo civilian && life_inv_fakeid1 >= 1;";
    };
/*

	class civ_Menu {
        variable = "civ_Menu";
        displayName = "<t color='#2d9900'>Civilisten Interaktionen</t>";
        ACE_Menu = 0;
        Menu[] = {"ACE_MainActions"};
        icon = "";
        code = "";
        conditons = "side _player isEqualTo civilian";
    };

};
