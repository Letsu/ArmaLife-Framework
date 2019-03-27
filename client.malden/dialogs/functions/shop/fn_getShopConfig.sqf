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
 * ["ShopClass"] call lts_dialog_fnc_getShopConfig
 *
 */

private _shopClass = param [0, ""];

//Display Controlls
private _DISPLAY = findDisplay 70001;

private _SHOPNAME    = _DISPLAY displayCtrl 1001;
private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
private _TVSHOP      = _DISPLAY displayCtrl 1500;
private _TVCART      = _DISPLAY displayCtrl 1501;
private _BUTTONBUY   = _DISPLAY displayCtrl 1600;
private _BUTTONABORT = _DISPLAY displayCtrl 1601;

private _configs = configProperties[missionConfigFile >> "Config_Shops" >> _shopClass];

//Get Shop Config
private _displayName = getText (_configs select 0);
_configs deleteAt 0;
private _condition   = getText (_configs select 0);
_configs deleteAt 0;

 //First some Checks!
private _hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };
//Set Text
_SHOPNAME ctrlSetText _displayName;


{
    //Set Title
    _y = getArray _x;
    _menuName = _y select 0;
    _tvPos = _TVSHOP tvAdd [[], _menuName];
    _y deleteAt 0;

    {
        _class     = _x select 0;
        _itemName  = _x select 1;
        _buyPrice  = _x select 2;
        _sellPrice = _x select 3;
        _condition = _x select 4;
        if (_itemName isEqualTo "") then { _itemName = [_class] call lts_fnc_getDisplayName; };

        /* _hasCondition = false;
        if !(_condition isEqualTo "") then { _hasCondition = true };
        if (_hasCondition && (call compile (_condition))) then { */
            _itemPos = _TVSHOP tvAdd [[_tvPos], _itemName];
            _data = [_class, _itemName, _buyPrice, _sellPrice, _shopClass];
            _TVSHOP tvSetData [[_tvPos, _itemPos], str(_data)];
        /* }; */

    } forEach _y;
} forEach _configs;




/* //First some Checks!
private _hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };
//Set Text
_SHOPNAME ctrlSetText _displayName;

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
    _LBSHOP lbAdd _itemName;

    private _curSize = lbSize _LBSHOP - 1;
    private _data = format["%1,%2",_shopClass, _index];
    _LBSHOP lbSetData [ _curSize, _data];
    _index = _index + 1;
} forEach _itemList;

_LBSHOP lbSetCurSel 0; */
