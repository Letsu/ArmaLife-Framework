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

 _dispaly = findDisplay 90001;
 _lb      = _dispaly displayCtrl 1500;
 _header  = _dispaly displayCtrl 1001;

 _curSel = lbCurSel _lb;

_data      = _lb lbData _curSel;
_dataSplit = _data splitString ",";


_func  = _dataSplit select 0;
_class = _dataSplit select 1;

[] call (call (compile _func));
