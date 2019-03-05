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

_player = param [0];
_cop    = param [1];
_amount = param [2];

private _exit = false;

if (_amount > lts_money_bank) exitWith { [ format["Dir wurde ein Ticket von %1 ausgestellt aber du hast nicht genug Geld auf deiner Bank um das Ticket in der höhe von: %2€ zu bezahlen!", name _cop, _amount] ] call lts_fnc_hint; _exit = true };

_exit = [ //Check if Exit work corektly when Player chose Value
    format["Dir wurde ein Ticket in höhe von: %1€ von: %2 ausgestellt.", _amount, name _cop],
    "Ticket",
    "Verweigern",
    "Bezahlen"
] call BIS_fnc_guiMessage;

if (_exit) exitWith { [_player, _cop, _amount, false] remoteExec ["lts_cop_fnc_getTicketCop", _cop] };

lts_money_bank = lts_money_bank - _amount;

[_player, _cop, _amount, true] call lts_cop_fnc_getTicketCop;
