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

private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
private _LBSHOP      = _DISPLAY displayCtrl 1500;

//Get Data from Current selected Listbox entry
private _curSel    = lbCurSel _LBSHOP;
private _data      = _LBSHOP lbData _curSel;
private _dataArr    = _data splitString ",";
private _shopClass = _dataArr select 0;
private _index     = call compile (_dataArr select 1); //Change to parseSimpleArray

//Get Config Vars
private _itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

//Get Item Vars
private _itemArr     = _itemList select _index;
private _item        = _itemArr select 0;
private _dispalyName = _itemArr select 1;
private _buyPrice    = _itemArr select 2;
private _sellPrice   = _itemArr select 3;
private _conditon    = _itemArr select 4;

//Set Text of the Price Label to Price of cur. selected Item.
private _text = format ["%1; %2", _buyPrice, _sellPrice];
_TEXTPRICE ctrlSetText str(_price);
