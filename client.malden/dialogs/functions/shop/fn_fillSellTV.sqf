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


_shopClass = param [0];
 //Display Controlls
 private _DISPLAY = findDisplay 70001;

 private _SHOPNAME    = _DISPLAY displayCtrl 1001;
 private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
 private _TVSHOP      = _DISPLAY displayCtrl 1500;
 private _TVSELL      = _DISPLAY displayCtrl 1501;
 private _BUTTONBUY   = _DISPLAY displayCtrl 1600;
 private _BUTTONABORT = _DISPLAY displayCtrl 1601;
 private _BUTTONSELL  = _DISPLAY displayCtrl 1007;

private _uniformItems = uniformItems player;
private _vestItems    = vestItems player;
private _backpack     = backpackItems player;

private _configs = configProperties[missionConfigFile >> "Config_Shops" >> _shopClass];
_configs deleteAt 0; //Delete DispalyName
_configs deleteAt 0; //Delete Condition

_sellArray = [];
//Create Array whit all Sellable Items
{
    _x deleteAt 0;
    if (_x select 3 isEqualTo -1) exitWith {};
    _sellArray pushBack [_x select 0, _x select 3];
} forEach _configs;
testSell = _sellArray;


_TVSELL tvAdd [[], "Uniform"];

{
    _class = _x;
    _name  = [_class] call lts_fnc_getDisplayName;
} forEach _uniformItems;


_TVSELL tvAdd [[], "Weste"];
_TVSELL tvAdd [[], "Rucksack"];
