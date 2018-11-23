private["_avabileSide", "_newSide", "_curSides", "_sideVar", "_sideName", "_sideStrCondition", "_sideLevel"];
/*
 * Author: Johannes "Letus" Bindriem
 * Function to Switch the Current Side of the Player.
 *
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
_newSide =  param [0, "civ"];

//Get Variables
_curSide = lts_core_curSide;
_avabileSide = getArray (missionConfigFile >> "Config_Side" >> "avabileSides");

//Some Checks
if (!(_newSide in _avabileSide)) exitWith { [format["Unkown Side: %1 was given in ChangeSide! Maybe you forgot to add the Side in AvabileSides or the Site dont exist!", _newSide]] call lts_fnc_log };

//Get Vars from Config
_sideVar = getText (missionConfigFile >> "Config_Side" >> _newSide >> "Var"); //Hopefully Same as _newSide
_sideName = getText (missionConfigFile >> "Config_Side" >> _newSide >> "DisplayName");
_sideStrCondition =  getText (missionConfigFile >> "Config_Side" >> _newSide >> "Condition");
_initScript = getText(missionConfigFile >> "Config_Side" >> _newSide >> "Init");


//More Checks
if (_newSide isEqualTo _curSide) exitWith { [format["Du bist schon: %1", _sideName]] call lts_fnc_hint }; //Add Stringtable
_sideLevel = 0;
if !(_sideStrCondition isEqualTo "") then {
    _sideLevel = call (compile _sideStrCondition);
    if (_sideLevel == 0) exitWith { [format["Du Kannst nicht bei der %1 in den Dienst gehen!", _sideName]] call lts_fnc_hint };
};

//Set new Site
 lts_core_curSide = _newSide;

//exec the Side Init Script if set
if !(_initScript isEqualTo "") then {
    [_newSide, _curSide] call (compile _initScript);
};

[format["Du bist jetzt bei: %1 im Dienst", _sideName]] call lts_fnc_hint;
