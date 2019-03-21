/*
 * Author: Johannes "Letus" Bindriem
 * Function called by Eventhandler for Action by KeyDown.
 *
 * Arguments:
 * 0: The Dispaly of the Eventhandler [Dispaly]
 * 1: The Code of the Key that pressed [Number]
 * 2: Player pressed Shift [Bool]
 * 3: Player pressed Ctrl [Bool]
 * 4: Player pressed Alt [Bool]
 *
 *
 *
 * Return Value:
 * Use Key by Arma Engine
 *
 * Example:
 * [Display, Key, Shift, Ctrl, Alt] call lts_fnc_keyDown
 *
 */

private _display = param [0];
private _key     = param [1];
private _shift   = param [2];
private _ctrl    = param [3];
private _alt     = param [4];

private _disableKey = false;

switch (_key) do {
    case (22): { //U
        //Get Vehicle if Player in Vehicle Player Vehicle if not the CursourTarget
        private _veh = "";
        if (isNull objectParent player) then {
            _veh = cursorObject;
        } else {
            _veh = vehicle player;
        };

        //Some CHecks
        if !(_veh isKindOf "AllVehicles")  exitWith {};
        if !(_veh in lts_core_curVehicles) exitWith {};
        if (player distance _veh > 3)      exitWith {};

        private _locked = locked _veh;

        if (_locked == 1) then { //Vehicle is Unlocked so Lock Vehicle
            _veh lock true; //Check if is Global or only Local
            _veh say3D ["carLock", 35];
            ["Du hast dein Fahrzeug abgeschlossen"] call lts_fnc_hint;
        } else { //Vehicle is Locked so Unlock Vehicle
            _veh lock false;
            _veh say3D ["carUnlock", 35];
            ["Du hast dein Fahrzeug aufgeschlossen"] call lts_fnc_hint;
        };
    _disableKey = true;
    };

    case (34): { //G
        if (_shift) then {
            private _target = cursorTarget;
            if (player distance _target > 3) exitWith {};
            [player, _target] call lts_fnc_knockOutPlayer;
        };
    };


    case (21): { //Z
        if(!_shift && !_ctrl) then {
            [] call lts_dialog_fnc_callPMenu;
            _disableKey = true;
        };
    };

    case (24): { //O
        if (lts_core_curSide isEqualTo "cop" && (vehicle player) getVariable ["copCar", false] ) then {
            [] call lts_dialog_fnc_callWanted;
            _disableKey = true;
        };
    };

    case (86): {
        [] spawn lts_fnc_gather;
    };

};


_disableKey;
