/*
 * Author: johannes "Letus" Bindriem
 * Delete an value from an Array and give back the new Array whitout the Value
 *
 * Arguments:
 * 0: Array [Array]
 * 1: Value in Array that should delet [Any]
 *
 * Return Value:
 * The New Array
 *
 * Example:
 * [[Array], Value] call lts_fnc_deleteFromArr
 *
 */

_arr = param [0];
_value = param [1, ""];

_newArr = [];
{
    if !(_x isEqualTo _value) then {_x pushBack _newArr};
} forEach _arr;

_newArr;
