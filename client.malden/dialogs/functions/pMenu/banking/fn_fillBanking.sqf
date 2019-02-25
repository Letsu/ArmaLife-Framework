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

private _DISPLAY  = findDisplay 91001;
private _BANKCTRL = _DISPLAY displayCtrl 91010;
private _CASHCTRL = _DISPLAY displayCtrl 91011;
private _GIVE     = _DISPLAY displayCtrl 91020;
private _LBGIVE   = _DISPLAY displayCtrl 91050;

private _bank = str(lts_money_bank);
private _cash = str(lts_money_cash);

_bank ctrlText _BANKCTRL;
_cash ctrlText _CASHCTRL;

{
    _name = name _X;
    _LBGIVE lbAdd _name;

    _size = lbSize _LBGIVE;
    str(_x) = _LBGIVE lbData (_size - 1);
} forEach (playableUnits - [player]);

lbSetCurSel 0;
