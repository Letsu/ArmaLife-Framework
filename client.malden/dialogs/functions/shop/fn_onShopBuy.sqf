private [];
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

 _display = findDisplay 70001;

 _shopName = _display displayCtrl 1001;
 _textPrice = _display displayCtrl 1003;
 _lbShop = _display displayCtrl 1500;
 _buttonBuy = _display displayCtrl 1600;
 _buttonAbort = _display displayCtrl 1601;

 _curSel = lbCurSel _lbShop;
 _data = _lbShop lbData _curSel;

_dataArr = _data splitString ",";

 _shopClass = _dataArr select 0;
 _index = call compile (_dataArr select 1);

 _itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

_itemArr = _itemList select _index;
_item = _itemArr select 0;
_dispalyName = _itemArr select 1;
_price = _itemArr select 2;
_conditon = _itemArr select 3;

[_item, 1] call lts_fnc_addItem;
