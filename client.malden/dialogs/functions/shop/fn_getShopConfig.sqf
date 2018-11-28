/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Class of Shop [String]
 * 1: Dispaly of ShopMenu
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 */

_shopClass = param [0, ""];

//Display COntrolls
_display = findDisplay 70001;

_shopName = _display displayCtrl 1001;
_textPrice = _display displayCtrl 1003;
_lbShop = _display displayCtrl 1500;
_buttonBuy = _display displayCtrl 1600;
_buttonAbort = _display displayCtrl 1601;

_displayName = getText (missionConfigFile >> "Config_Shops" >> _shopClass >> "DisplayName");
_condition = getText (missionConfigFile >> "Config_Shops" >> _shopClass >> "Condition");
_itemList = getArray (missionConfigFile >> "Config_Shops" >> _shopClass >> "Items");

//First some Checks!
_hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
has = _hasCondition;
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };
//Set Text
_shopName ctrlSetText _displayName;

_index = 0;
{
    _item = _x select 0;
    _itemName = _x select 1;
    _price = _x select 2;
    _itemCondition = _x select 3;

    if !(_itemCondition isEqualTo "") then { _hasItemCondition = true };
    if (_hasItemCondition && compile (_itemCondition)) exitWith { };

    if (_itemName isEqualTo "") then { _itemName = [_item] call lts_fnc_getDisplayName };

    _lbShop lbAdd _itemName;

    _curSize = lbSize _lbShop - 1;
    _data = format["%1,%2",_shopClass, _index];
    _lbShop lbSetData [ _curSize, _data];
    _index = _index + 1;
} forEach _itemList;

_lbShop lbSetCurSel 0;
