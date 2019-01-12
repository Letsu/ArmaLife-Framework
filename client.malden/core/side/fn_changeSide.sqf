/*
 * Author: Johannes "Letus" Bindriem
 * Function to Switch the Current Side of the Player.
 * Check if Player has the Level of this side and calls an Init to load one side only Scripts
 *
 * Arguments:
 * 0: Side [String]
 *
 * Return Value:
 * None
 *
 * Example:
 * ["Side"] call lts_fnc_changeSide;
 *
 */
private _newSide = param [0, "civ"];

//Some Checks
private _isSide = false;
{
    _pfad = str(_x) splitString "/, \";
    _config = _pfad select ((count _pfad) - 1);
    if (_config isEqualTo _newSide) exitWith { _isSide = true };
} forEach ("true" configClasses (missionConfigFile >> "Config_Side"));

private _curSide = lts_core_curSide;
if (_newSide isEqualTo _curSide) exitWith { ["Du bist schon auf dieser Seite!"] call lts_fnc_hint }; //Add Stringtable

//Get Vars from Config
private _sideVar = getText (missionConfigFile >> "Config_Side" >> _newSide >> "Var"); //Hopefully Same as _newSide maybe delete this
private _sideName = getText (missionConfigFile >> "Config_Side" >> _newSide >> "DisplayName");
private _sideStrCondition =  getText (missionConfigFile >> "Config_Side" >> _newSide >> "Condition");
private _initScript = getText(missionConfigFile >> "Config_Side" >> _newSide >> "Init");

//Check Condition
private _exit = false;
if !(_sideStrCondition isEqualTo "") then {
    if (call compile(_sideStrCondition)) exitWith { _exit = true };
};
if (_exit) exitWith { ["Du kannst auf diese Seite nicht wechseln!"] call lts_fnc_hint };

//Set new Site
lts_core_curSide = _newSide;

//exec the Side Init Script if set
if !(_initScript isEqualTo "") then {
    [_newSide, _curSide] call (compile _initScript);
};

[format["Du bist jetzt bei: %1 im Dienst", _sideName]] call lts_fnc_hint;
