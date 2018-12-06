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

_dispaly = findDisplay 90001;
_lb      = _dispaly displayCtrl 1500;
_header  = _dispaly displayCtrl 1001;

//Get Config Entrys


{
    _pfad = str(_x) splitString "/, \";
    _config = _pfad select ((count _pfad) - 1);

    _displayName = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "DisplayName");
    _function    = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "Func");
    _icon        = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "Icon");
    _condition   = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "Condition");

    _hasCondition = false;
    if !(_condition isEqualTo "") then { _hasCondition = true };
    if (_hasCondition && call compile (_condition)) exitWith { };


    _lb lbAdd _displayName;
    _size = lbSize _lb;
    pSize = _size;
    _data = format ["%1,%2", _function, _config];
    _lb lbSetData [_data, _size];

} forEach ("true" configClasses (missionConfigFile >> "Config_PMenu"));
