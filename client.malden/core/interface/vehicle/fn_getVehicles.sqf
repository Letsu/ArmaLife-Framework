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

private _data = param [0];
_data = _data select 1;

if (count _data isEqualTo 0) exitWith {};
testARR = _data;
lts_core_allVehicles = [];

{
    private _plate = _x select 1;
    private _class = _x select 2;
    private _ownerPID = _x select 3;
    private _ownerName = _x select 4;
    private _keyOwner = _x select 5;
    private _keyNames = _x select 6;
    private _fuel = _x select 7;
    private _inv  = _x select 8;

    private _vehArr = [_plate, _class, _ownerPID, _ownerName, _keyOwner, _keyNames, _fuel, _inv, false];

    lts_core_allVehicles pushBackUnique _vehArr;
} forEach _data;
