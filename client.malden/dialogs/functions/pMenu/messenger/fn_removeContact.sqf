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

 private _DISPLAY = findDisplay 93001;
 private _CONTACTLB = _DISPLAY displayCtrl 1000;

private _curSel = lbCurSel _CONTACTLB;
private _CONTACTLB lbData _curSel;

_data = parseSimpleArray _data;
[_data] call lts_fnc_disableContact;

[] spawn {
    sleep 0.3;
    [] call lts_dialog_fnc_callMessenger
};
