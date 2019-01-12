/*
 * Author: Johannes "Letus" Bindriem
 * Set a new Cop Level for an Player and when an add send an Request to the interface to Create an new Cop DB Netry when Cop not exist
 *
 * Arguments:
 * 0: New Cop Level [Number]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [1] call lts_cop_fnc_setCopLevel
 *
 */

private _newLevel = param [0, 1];
private _oldLevel = lts_cop_level;

if (_oldLevel isEqualTo 0) exitWith { ["Send Request to Set Cop Level from 0! Abort! When you will create an new cop call lts_cop_fnc_createCop!"] call lts_fnc_log };

[ format ["Du wurdest gerade von Level %1 auf %2 Befördert!", _oldLevel, _newLevel] ] call lts_fnc_hint;
lts_cop_level = _newLevel;


//Update Cop Level
[] call lts_interface_fnc_updateCopLevel;
