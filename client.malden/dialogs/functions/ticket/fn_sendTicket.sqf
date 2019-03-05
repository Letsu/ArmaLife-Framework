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
private _DISPLAY = findDisplay 60001;
_TEXTTICKET = _DISPLAY displayCtrl 60030;


/* Get Value of TextBox and pass to lts_cop_fnc_giveTicket */
private _amount = ctrlText _TEXTTICKET;

_amount = parseNumber _amount;

if (_amount <= 0) exitWith { ["Du hast keine Zahl oder 0 eingegeben! Bitte gebe eine gültige zahl ein!"] call lts_fnc_hint };

private _target = lts_dialog_ticket_target;
closeDialog 0;

lts_dialog_ticket_target = objNull;
[_target, _amount] call lts_cop_fnc_giveTicket;
