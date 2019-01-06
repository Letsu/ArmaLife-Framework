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

/*
Injured Move???
Acts_InjuredLyingRifle01
Acts_InjuredLyingRifle02
Acts_InjuredLyingRifle02_180
Acts_LyingWounded_loop1
Acts_LyingWounded_loop2
Acts_LyingWounded_loop3
Acts_SittingWounded_loop
*/




private _newUnit = _this select 0;
private _oldUnit = _this select 1;

[] call lts_dialog_fnc_callSpawn;

deleteVehicle _oldUnit;
