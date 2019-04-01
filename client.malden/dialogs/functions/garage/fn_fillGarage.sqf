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

if (_spawnPos isEqualTo "") exitWith {};

//request vehicle of player
lts_core_allVehicles = [];
[] spawn lts_interface_fnc_requestVehicles;
waitUntil{count lts_core_allVehicles > 0};

//For all Player Vehicles
{
    _LBCARS lbAdd ([_class] call lts_fnc_getDisplayName);
    private _data = [_x, _spawnPos];
    _LBCARS lbSetData [(lbSize _LBCARS) - 1 , str(_data)];
} forEach lts_core_allVehicles;
