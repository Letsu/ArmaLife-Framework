private [];
/*
 * Author: [Name of Author(s)]
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
_display = param [0];
_key     = param [1];
_shift   = param [2];
_ctrl    = param [3];
_alt     = param [4];

_disableKey = false;

switch (_key) do {
    case (24): {
        //Get Vehicle if Player in Vehicle Player Vehicle if not the CursourTarget
        _veh = "";
        if (isNull objectParent player) then {
            _veh = cursorObject;
        } else {
            _veh = vehicle player;
        };

        //Some CHecks
        if (!(_veh isKindOf "AllVehicles")) exitWith {};
        //FOR DEBUG!!!!!!! if (_veh in lts_core_curVehicles) exitWith {};
        _locked = locked _veh;

        if (_locked == 1) then { //Vehicle is Unlocked so Lock Vehicle
            _veh lock true; //Check if is Global or only Local
            _veh say3D ["carLock", 35];
            ["Du hast dein Fahrzeug abgeschlossen"] call lts_fnc_hint;
        } else { //Vehicle is Locked so Unlock Vehicle
            _veh lock false;
            _veh say3D ["carUnlock", 35];
            ["Du hast dein Fahrzeug aufgeschlossen"] call lts_fnc_hint;
        };
    _disableKey = true; // DEBUG
    };

};



_disableKey;
