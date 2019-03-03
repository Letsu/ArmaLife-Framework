/*
 * Author: Johannes "letus" Bindriem
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

_from   = param [0];
_to     = param [1];
_amount = param [2];

[format ["Dir wurden %1€ von %2 gegeben!", _amount, name _from]] call lts_fnc_hint;

[_amount, 0] call lts_fnc_addMoney;
