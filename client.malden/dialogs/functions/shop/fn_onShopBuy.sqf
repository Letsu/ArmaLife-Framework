private ["_display", "_shopName", "_textPrice", "_lbShop", "_buttonBuy", "_buttonAbort", "_curSel", "_data", "_dataArr", "_shopClass", "_index", "_itemList", "_itemArr", "_item", "_dispalyName", "_price", "_conditon"];
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

//Get Dispalys
 _display = findDisplay 70001;

 _shopName = _display displayCtrl 1001;
 _textPrice = _display displayCtrl 1003;
 _lbShop = _display displayCtrl 1500;
 _buttonBuy = _display displayCtrl 1600;
 _buttonAbort = _display displayCtrl 1601;

//Get the Data out of Curent selectet Listbox entry
 _curSel = lbCurSel _lbShop;
 _data = _lbShop lbData _curSel;
_dataArr = _data splitString ",";
 _shopClass = _dataArr select 0;
 _index = call compile (_dataArr select 1);

//Read shop Config
 _itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

//Get Item Vars from Config
_itemArr = _itemList select _index;
_item = _itemArr select 0;
_dispalyName = _itemArr select 1;
_price = _itemArr select 2;
_conditon = _itemArr select 3;

//Add Item to Player
[_item, 1] call lts_fnc_addItem;
