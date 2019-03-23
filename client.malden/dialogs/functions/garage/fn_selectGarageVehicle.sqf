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

 private _DISPLAY = findDisplay 20001;
 private _LBCARS = _DISPLAY displayCtrl 1000;
 private _TEXTINFO = _DISPLAY displayCtrl 1003;
 private _TEXTFOOTER = _DISPLAY displayCtrl 1008;

_index = lbCurSel _LBCARS;
_data = parseNumber (_LBCARS lbData _index);
systemChat str(_index);
systemChat str(_data);
