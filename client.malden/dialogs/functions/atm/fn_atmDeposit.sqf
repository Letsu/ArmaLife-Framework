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

_DISPLAY = findDisplay 30001;
_DEPOSITBUTTON = _display displayCtrl 1009;
_MONEYEDIT = _DISPLAY displayCtrl 1006;

if (lts_dialog_atm_curUsing) exitWith { ["Du kannst nicht so schnell hintereinander Transaktionen tätigen!"] call lts_fnc_hint };
lts_dialog_atm_curUsing = true;

_amount = parseNumber(ctrlText _MONEYEDIT);
_curCash = lts_money_cash;
_curBank = lts_money_bank;

//Some Checks!
if (_amount > _curCash) exitWith { ["Du hast nicht so viel Geld um denn Betrag einzuzahlen!"] call lts_fnc_hint; lts_dialog_atm_curUsing = false };
if (_amount <= 0) exitWith { ["Du kannst nicht 0 Einzahlen"] call lts_fnc_hint; lts_dialog_atm_curUsing = false };
if (_amount > 999999) exitWith { ["Du kannst nur Maximal 1.000.000 auf einmal einzahlen"] call lts_fnc_hint; lts_dialog_atm_curUsing = false };

lts_money_cash = lts_money_cash - _amount;
lts_money_bank = lts_money_bank + _amount;
[] call lts_dialog_fnc_updateAtmText;
[] call lts_fnc_savePlayerInfo;
[ format["Du hast %1€ eingezahlt", _amount] ] call lts_fnc_hint;
[] spawn {
    sleep 0.5;
    lts_dialog_atm_curUsing = false;
}
