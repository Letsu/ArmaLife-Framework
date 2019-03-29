/*
 * Author: Johannes "Letus" Bindriem
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
private _spawnPos = param [0, ""];
private _DISPLAY = findDisplay 20001;
private _LBCARS = _DISPLAY displayCtrl 1000;

//For all Player Vehicles
private _num = 0;
{
    //Vehicle is Pared out already so dont list it in the Garage
    if !(_x select 8) then {
        private _plate = _x select 0;
        private _class = _x select 1;
        private _ownerUID = _x select 2;
        private _ownerName = _x select 3;
        private _keyUIDs = _x select 4;
        private _keyNames = _x select 5;
        private _fuel = _x select 6;
        private _inv = _x select 7;
        private _avv = _x select 8;

        _LBCARS lbAdd ([_class] call lts_fnc_getDisplayName);
        private _data = [str(_num), _spawnPos];
        _LBCARS lbSetData [(lbSize _LBCARS) - 1 , str(_data)];
    };
    _num = _num + 1;
} forEach lts_core_allVehicles;
