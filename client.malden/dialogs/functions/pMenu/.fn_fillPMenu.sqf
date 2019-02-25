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

private _dispaly = findDisplay 90001;
private _lb      = _dispaly displayCtrl 1500;
private _header  = _dispaly displayCtrl 1001;

//Get Config Entrys


{
    private _pfad = str(_x) splitString "/, \";
    private _config = _pfad select ((count _pfad) - 1);

    private _displayName = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "DisplayName");
    private _function    = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "Func");
    private _icon        = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "Icon");
    private _condition   = getText ( missionConfigFile >> "Config_PMenu" >> _config >> "Condition");

    private _hasCondition = false;
    if !(_condition isEqualTo "") then { _hasCondition = true };
    if (_hasCondition && call compile (_condition)) exitWith { };


    _lb lbAdd _displayName;
    private _size = lbSize _lb;
    private _data = format ["%1,%2", _function, _config];
    _lb lbSetData [(_size - 1), _data];

} forEach ("true" configClasses (missionConfigFile >> "Config_PMenu"));
