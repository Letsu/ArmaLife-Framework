/*
 * Author: Johannes "Letus" bindriem
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

_DISPLAY = findDisplay 95001;
_LBLICNSE = _DISPLAY displayCtrl 95050;
if ((count lts_core_licenses) isEqualTo 0) exitWith { _LBLICNSE lbAdd "Du hast noch keine Lizenzen!" };


{
    _name = [_x select 0] call lts_fnc_getDisplayName;

    _LBLICNSE lbAdd _name;
} forEach lts_core_licenses;
