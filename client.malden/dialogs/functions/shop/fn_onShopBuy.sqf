
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
private _DISPLAY = findDisplay 70001;

private _LBSHOP = _DISPLAY displayCtrl 1500;

//Get the Data out of Curent selectet Listbox entry
private _curSel = lbCurSel _LBSHOP;
private _data = _LBSHOP lbData _curSel;
private _dataArr = _data splitString ",";
private _shopClass = _dataArr select 0;
private _index = call compile (_dataArr select 1);

//Read shop Config
private _itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

//Get Item Vars from Config
private _itemArr = _itemList select _index;
private _item = _itemArr select 0;
private _dispalyName = _itemArr select 1;
private _price = _itemArr select 2;
private _conditon = _itemArr select 3;

//Add Item to Player
[_item, 1] call lts_fnc_addItem;
