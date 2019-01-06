/*
 * Author: Johannes "Letus" Bindriem
 * Sort the Vehicle Array and check for Null Obj.
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_fnc_updateVehArray
 *
 */

private _newArray = [];

{
    if !(_x isEqualTo objNull) then { _newArray pushBackUnique _x };
} forEach lts_core_curVehicles;

lts_core_curVehicles = _newArray;
