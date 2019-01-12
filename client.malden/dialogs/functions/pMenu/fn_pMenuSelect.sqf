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

 private _dispaly = findDisplay 90001;
 private _lb      = _dispaly displayCtrl 1500;
 private _header  = _dispaly displayCtrl 1001;

 private _curSel = lbCurSel _lb;

private _data      = _lb lbData _curSel;
private _dataSplit = _data splitString ",";


private _func  = _dataSplit select 0;
private _class = _dataSplit select 1;

[] call (call (compile _func));
