/*
 * Author: Johannes "Letus" Bindriem
 * SEt Text in Shop Dialog and fills the Listbox
 *
 * Arguments:
 * 0: Class of Shop [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 */

private _shopClass = param [0, ""];

//Display Controlls
private _display = findDisplay 70001;

private _shopName = _display displayCtrl 1001;
private _textPrice = _display displayCtrl 1003;
private _lbShop = _display displayCtrl 1500;
private _buttonBuy = _display displayCtrl 1600;
private _buttonAbort = _display displayCtrl 1601;

//Get Shop Config
private _displayName = getText (missionConfigFile >> "Config_Shops" >> _shopClass >> "DisplayName");
private _condition = getText (missionConfigFile >> "Config_Shops" >> _shopClass >> "Condition");
private _itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

//First some Checks!
private _hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };
//Set Text
_shopName ctrlSetText _displayName;

private _index = 0;
{
    //get Item Vars from Config
    private _item = _x select 0;
    private _itemName = _x select 1;
    private _buyPrice = _x select 2;
    private _sellPrice = _x select 3;
    private _itemCondition = _x select 4;

    //Check Condition when Item has Conditoun and the Condtion is false exit Here to Skip Item
    if !(_itemCondition isEqualTo "") then { _hasItemCondition = true };
    if (_hasItemCondition && compile (_itemCondition)) exitWith { };

    //Get Standart Displayname of Item when none Displayname ist set in Config
    if (_itemName isEqualTo "") then { _itemName = [_item] call lts_fnc_getDisplayName };

    //add Item to ListBox and set Data of Listbox entry whit the ShopClass and the Index of Item in Config
    _lbShop lbAdd _itemName;

    private _curSize = lbSize _lbShop - 1;
    private _data = format["%1,%2",_shopClass, _index];
    _lbShop lbSetData [ _curSize, _data];
    _index = _index + 1;
} forEach _itemList;

_lbShop lbSetCurSel 0;
