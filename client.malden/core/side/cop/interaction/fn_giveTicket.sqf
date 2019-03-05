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


private _target = param [0];
private _amount = param [1];

if (_amount > 1000000) exitWith { ["Du kannst Tickets nur bis zu einem Betrag von maximal 1.000.000€ ausstellen!"] call lts_fnc_hint }; //Set Right max value!

[_target, player, _amount] remoteExec ["lts_fnc_getTicket", _target];
