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
_BANKTEXT = _DISPLAY displayCtrl 1005;
_CASHTEXT = _DISPLAY displayCtrl 1003;

_BANKTEXT ctrlSetText str(lts_money_bank);
_CASHTEXT ctrlSetText str(lts_money_cash);
