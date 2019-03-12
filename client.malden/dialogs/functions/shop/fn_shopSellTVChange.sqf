/*
 * Author: Johannes "Letus" Bindriem
 * Function call every time Player change the current selected Listbox entry
 * Set Price of Item at the given Label.
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_shopLbChange
 *
 */

//Get Display Controls
private _DISPLAY = findDisplay 70001;

private _TEXTPRICE   = _DISPLAY displayCtrl 1010;
private _TVSHOP      = _DISPLAY displayCtrl 1500;
private _TVSELL      = _DISPLAY displayCtrl 1501;

private _curSel = tvCurSel _TVSELL;
if (count _curSel <= 1) exitWith { };
private _data = _TVSELL tvData _curSel;
_data = parseSimpleArray _data;


private _class = _data select 0;
private _name = _data select 1;
private _sellPrice = _data select 2;
private _shopClass = _data select 3;
private _pos = _data select 4;


_TEXTPRICE ctrlSetText str(_sellPrice);
