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

tvClear _TVSELL;

private _uniformItems = uniformItems player;
private _vestItems    = vestItems player;
private _backpack     = backpackItems player;

private _configs = configProperties[missionConfigFile >> "Config_Shops" >> _shopClass];
_configs deleteAt 0; //Delete DispalyName
_configs deleteAt 0; //Delete Condition


private _sellArrayClass = [];
private _sellArrayPrice = [];
//Create Array whit all Sellable Items
{
    _y = getArray _x;
    _y deleteAt 0;
    {
        if !((_x select 3) isEqualTo -1) then {
            _sellArrayClass pushBack (_x select 0);
            _sellArrayPrice pushBack (_x select 3);
        };
    } forEach (_y);
} forEach _configs;


_uniformPos = _TVSELL tvAdd [[], "Uniform"];
_classArrays = [];
_classArrayList = [];
{
    _class = _x;
    if (_class in _sellArrayClass) then {

        _name  = [_class] call lts_fnc_getDisplayName;
        _arrPos = _sellArrayClass find _class;
        _price = _sellArrayPrice select _arrPos;

        if (_class in _classArrays) then {
            _index = _classArrays find _class;
            _id = _classArrayList select _index;

            _pos = _TVSELL tvAdd [[_uniformPos, _id], _name];
            _data = [_class, _name, _price, _shopClass, 0, false];
            _TVSELL tvSetData [[_uniformPos, _id, _pos], str(_data)];
        } else {

            _pos = _TVSELL tvAdd [[_uniformPos], _name];
            _data = [_class, _name, _price, _shopClass, 0, true];
            _TVSELL tvSetData [[_uniformPos, _pos], str(_data)];

            _pos2 = _TVSELL tvAdd [[_uniformPos, _pos], _name];
            _data = [_class, _name, _price, _shopClass, 0, false];
            _TVSELL tvSetData [[_uniformPos, _pos, _pos2], str(_data)];
            _classArrays pushBackUnique _class;
            _classArrayList pushBack _pos;
        };
    };
} forEach _uniformItems;

_classArrays = [];
_classArrayList = [];
_vestPos = _TVSELL tvAdd [[], "Weste"];
{
    _class = _x;
    if (_class in _sellArrayClass) then {
        _name  = [_class] call lts_fnc_getDisplayName;
        _arrPos = _sellArrayClass find _class;
        _price = _sellArrayPrice select _arrPos;

        if (_class in _classArrays) then {
            _index = _classArrays find _class;
            _id = _classArrayList select _index;

            _pos = _TVSELL tvAdd [[_vestPos, _id], _name];
            _data = [_class, _name, _price, _shopClass, 1, false];
            _TVSELL tvSetData [[_vestPos, _id, _pos], str(_data)];
        } else {
            _pos = _TVSELL tvAdd [[_vestPos], _name];
            _data = [_class, _name, _price, _shopClass, 1, true];
            _TVSELL tvSetData [[_vestPos, _pos], str(_data)];

            _pos2 = _TVSELL tvAdd [[_vestPos, _pos], _name];
            _data = [_class, _name, _price, _shopClass, 1, false];
            _TVSELL tvSetData [[_vestPos, _pos, _pos2], str(_data)];
            _classArrays pushBackUnique _class;
            _classArrayList pushBack _pos;
        };
    };
} forEach _vestItems;

_classArrays = [];
_classArrayList = [];
_backpackPos = _TVSELL tvAdd [[], "Rucksack"];
{
    _class = _x;
    if (_class in _sellArrayClass) then {
        _name  = [_class] call lts_fnc_getDisplayName;
        _arrPos = _sellArrayClass find _class;
        _price = _sellArrayPrice select _arrPos;

        if (_class in _classArrays) then {
            _index = _classArrays find _class;
            _id = _classArrayList select _index;

            _pos = _TVSELL tvAdd [[_backpackPos, _id], _name];
            _data = [_class, _name, _price, _shopClass, 2, false];
            _TVSELL tvSetData [[_backpackPos, _id, _pos], str(_data)];
        } else {

            _pos = _TVSELL tvAdd [[_backpackPos], _name];
            _data = [_class, _name, _price, _shopClass, 2, true];
            _TVSELL tvSetData [[_backpackPos, _pos], str(_data)];

            _pos2 = _TVSELL tvAdd [[_backpackPos, _pos], _name];
            _data = [_class, _name, _price, _shopClass, 2, false];
            _TVSELL tvSetData [[_backpackPos, _pos, _pos2], str(_data)];
            _classArrays pushBackUnique _class;
            _classArrayList pushBack _pos;
        };
    };
} forEach _backpack;

tvExpandAll _TVSELL;
