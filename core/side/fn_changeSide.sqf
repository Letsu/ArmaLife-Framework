private["_avabileSide", "_newSide", "_curSides"];
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
_newSide = _this select 0;
_curSides = lts_core_curSide;
 _avabileSide = getArray (missionConfigFile >> "Master_Class" >> "avabileSides");

//Conditions
if (_newSide == _curSides) exitWith { ["Sie sind aktuell schon auf dieser Seite"] call lts_fnc_hint }; //Add Stringtable
if (!(_newSide in _avabileSide)) exitWith { ["Unkown Side was given in ChangeSide!"] call lts_fnc_log };
//if (lts_cop_level == 0 || lts_med_level == 0) exitWith { ["Sie können nicht auf diese Seite"] call lts_fnc_hint }; //Add Stringtable & Dynamic Level Check for dynamoc Sides


 lts_core_curSide = _newSide;
["Du bist in eine anderen Seite gewechselt"] call lts_fnc_hint;
