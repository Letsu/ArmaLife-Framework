/*
 * Author: Johannes "Letus" Bindriem
 * Create new Cop in Database
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
 */

_uid = param [0];
_name = param [1, "UNKOWN"];
_level = param [2, 0];

if (_name isEqualTo "UNKOWN") exitWith { [format ["%1: No Name given by Create an new Cop Entry", _uid]] call lts_fnc_log };

//database Entry
