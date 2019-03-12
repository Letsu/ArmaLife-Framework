
/*
 * Author: Johannes "Letus" Bindriem
 * Called on Buy Button Pressed. Add the Item to Player Inv and remove the Money
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * call lts_dialog_fnc_onShopBuy
 *
 */

 //Display Controlls
 private _DISPLAY = findDisplay 70001;

 private _SHOPNAME    = _DISPLAY displayCtrl 1001;
 private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
 private _TVSHOP      = _DISPLAY displayCtrl 1500;
 private _TVCART      = _DISPLAY displayCtrl 1501;


private _curSel = tvCurSel _TVSHOP;
if (count _curSel <= 1) exitWith { };
private _data = _TVSHOP tvData _curSel;
_data = parseSimpleArray _data;


private _class = _data select 0;
private _name = _data select 1;
private _buyPrice = _data select 2;
private _sellPrice = _data select 3;
private _shopClass = _data select 4;


if (lts_money_cash < _buyPrice) exitWith { ["Du hast nicht genug Geld um dir das zu kaufen!"] call lts_fnc_hint };


[ format ["Du hats dir %1 gekauft!", _name] ] call lts_fnc_hint;
//Add Item to Player
[_class, 1] call lts_fnc_addItem;
[_shopClass] call lts_dialog_fnc_fillSellTV; //Update Inventory List!
