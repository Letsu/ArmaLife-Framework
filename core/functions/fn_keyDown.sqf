private [];
/*
 * Author: [Name of Author(s)]
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
_display = _this select 0;
_key     = _this select 1;
_shift   = _this select 2;
_ctrl    = _this select 3;
_alt     = _this select 4;

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
