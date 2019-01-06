/*
 * Author: Johannes "Letus" Bindriem
 * Give back the Pos of the vehicle in the Vehicle Array.
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 * 0: Pos in Vehicle Array [Number]
 *
 * Example:
 * ["Vehicle"] call lts_fnc_getVehicle
 *
 */

private _vehicle = param [0, objNull];


private _arr = 0;
private _pos = 0;
{
    if (_x isEqualTo _vehicle) exitWith {_pos = _arr};

    _arr = _arr + 1;
} forEach lts_core_curVehicles;
