/*
 * Author: Johannes "letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Vehicle that removed [Object]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["Vehicle"] call lts_fnc_removeVehicle;
 *
 */

private _vehicle = param [0, objNull];

private _pos = [_vehicle] call lts_fnc_getVehicle;

//Set Vehicle as objNil because of
lts_core_curVehicles set [_pos, objNull];
