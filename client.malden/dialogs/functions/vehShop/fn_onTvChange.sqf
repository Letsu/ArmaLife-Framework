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
 private _DISPLAY = findDisplay 80001;

 private _SHOPNAME    = _DISPLAY displayCtrl 1001;
 private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
 private _TVSHOP      = _DISPLAY displayCtrl 1500;
 private _BUTTONBUY   = _DISPALY displayCtrl 1600;
 private _BUTTONABORT = _DISPLAY displayCtrl 1601;
 private _VEHCOMP     = _DISPLAY displayCtrl 1004;

 private _curSel = tvCurSel _TVSHOP;
 if (count _curSel <= 1) exitWith { };
 private _data = _TVSHOP tvData _curSel;
 _data = parseSimpleArray _data;
_price = _data select 4;

_TEXTPRICE ctrlSetText str(_price);
