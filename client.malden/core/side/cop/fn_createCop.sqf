/*
 * Author: Johannes 'Letus' Bindriem
 * Create new Cop. Set Cop Level and send request to the Interface.
 *
 * Arguments:
 * 0: Cop Level
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [1] call lts_cop_fnc_createCop
 *
 */
private _level = param [0];
if (_level < 1) exitWith { ["Send Request to create Cop whit level <= 0!"] call lts_fnc_log };
lts_cop_level = _level;

[] call lts_interface_fnc_createNewCop;
