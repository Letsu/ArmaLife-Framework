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

 private _player       = param [0];
 private _cop          = param [1];
 private _actionParams = param [2];

_licenses = lts_core_licenses;

[_player, _cop, _actionParams, _licenses] remoteExec ["lts_cop_fnc_getLicense", _cop];
