private ["_dispaly", "_shopName", "_textPrice", "_lbShop", "_buttonBuy", "_buttonAbort", "_curSel", "_data", "_dataArr", "_shopClass", "_index"]
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
 _display = findDisplay 70001;

 _shopName = _display displayCtrl 1001;
 _textPrice = _display displayCtrl 1003;
 _lbShop = _display displayCtrl 1500;
 _buttonBuy = _display displayCtrl 1600;
 _buttonAbort = _display displayCtrl 1601;

//Get Data from Current selected Listbox entry
 _curSel = lbCurSel _lbShop;
 _data = _lbShop lbData _curSel;
_dataArr = _data splitString ",";
 _shopClass = _dataArr select 0;
 _index = call compile (_dataArr select 1);

//Get Config Vars
 _itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

//Get Item Vars
_itemArr = _itemList select _index;
_item = _itemArr select 0;
_dispalyName = _itemArr select 1;
_price = _itemArr select 2;
_conditon = _itemArr select 3;

//Set Text of the Price Label to Price of cur. selected Item.
_textPrice ctrlSetText str(_price);
