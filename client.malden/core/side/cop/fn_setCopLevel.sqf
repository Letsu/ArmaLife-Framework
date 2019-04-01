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

if (_oldLevel isEqualTo 0) then {
    ["Du wurdest in denn Polizei Dienst gestellt."] call lts_fnc_hint;
    lts_cop_level = _newLevel;
    [] call lts_interface_fnc_createNewCop;
} else {
    ["Du wurdest von Rang %1 auf Rang %2 Befördert."] call lts_fnc_hint;
    lts_cop_level = _newLevel;
    [] call lts_interface_fnc_updateCopLevel;
};
