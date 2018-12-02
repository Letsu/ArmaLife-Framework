/*
 * Author: johannes "Letus" Bindriem
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

_arr = param [0];
_value = param [1, ""];

_newArr = [];
{
    if !(_x isEqualTo _value) then {_x pushBack _newArr};
} forEach _arr;

_newArr; 
