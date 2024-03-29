/*
 * Author: Johannes "Letus" Bindriem
 * Calls Functions when Player press Give Button.
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_bankingGive
 *
 */

private _DISPLAY  = findDisplay 91001;
private _GIVE     = _DISPLAY displayCtrl 91020;
private _EDITGIVE = _DISPLAY displayCtrl 91030;
private _LBGIVE   = _DISPLAY displayCtrl 91050;
_num = parseNumber(ctrlText _EDITGIVE);
if (_num <= 0) exitWith { ["Du hast keine Zahl oder 0 eingegeben. Bitte gib eine Gültige zahl ein!"] call lts_fnc_hint };
if (lts_money_cash < _num) exitWith { ["Du hast nicht genug Geld!"] call lts_fnc_hint };



_curSel = lbCurSel _LBGIVE;
_data = _LBGIVE lbData _curSel;
_to = lts_banking_lb_players select _curSel;

lts_money_cash = lts_money_cash - _num;

[player, _to, _num] remoteExec ["lts_fnc_giveMoney", _to];
