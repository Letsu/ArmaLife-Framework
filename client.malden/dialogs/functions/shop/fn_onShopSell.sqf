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
 //Display Controlls
 private _DISPLAY = findDisplay 70001;

 private _SHOPNAME    = _DISPLAY displayCtrl 1001;
 private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
 private _TVSHOP      = _DISPLAY displayCtrl 1500;
 private _TVCART      = _DISPLAY displayCtrl 1501;

if (lts_dialog_shop_disableSell) exitWith {};
lts_dialog_shop_disableSell = true;
private _curSel = tvCurSel _TVCART;
if (count _curSel <= 1) exitWith { lts_dialog_shop_disableSell = false };
private _data = _TVCART tvData _curSel;
_data = parseSimpleArray _data;


private _class = _data select 0;
private _name = _data select 1;
private _sellPrice = _data select 2;
private _shopClass = _data select 3;
private _pos = _data select 4;


[ format ["Du hats %1 verkauft!", _name] ] call lts_fnc_hint;
//Remove Item to Player
if (_pos isEqualTo 0) then { player removeItemFromUniform _class } else { if (_pos isEqualTo 1) then { player removeItemFromVest _class } else {player removeItemFromBackpack _class} };
[_shopClass] call lts_dialog_fnc_fillSellTV; //Update Inventory List!
lts_money_cash = lts_money_cash + _sellPrice;
lts_dialog_shop_disableSell = false;
