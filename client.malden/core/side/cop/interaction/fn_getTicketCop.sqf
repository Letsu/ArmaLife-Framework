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
private _target = param [0];
private _cop    = param [1];
private _amount = param [2];
private _payed  = param [3];

if !(_payed) exitWith { [format["%1 konnte dein Ticket in der höhe von %2€ nicht zahlen oder hat es verweigert!", name _target, _amount] ] call lts_fnc_hint };

private _amountFinal = _amount * 0.25;

[ format ["%1 hat dein Ticket in höhe von %2€ bezahlt! Nach dem Abzug der Gebüren bekommst du: %3€ extra Gehalt!", name _target, _amount, _amountFinal] ] call lts_fnc_hint;

lts_money_bank = lts_money_bank + _amountFinal;
