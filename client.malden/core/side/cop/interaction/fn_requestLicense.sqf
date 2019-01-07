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

 private _target       = param [0];
 private _player       = param [1];
 private _actionParams = param [2];

[_target, _player, _actionParams] remoteExec ["lts_fnc_getLicense", _target];
