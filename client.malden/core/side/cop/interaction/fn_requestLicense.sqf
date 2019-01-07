/*
 * Author: Johannes "Letus" Bindriem
 * Send request to Player to get his Licenses (return to lts_cop_fnc_getLicense)
 *
 * Arguments:
 * 0: Target from Ace Interaction [Object]
 * 1: Player from Ace Interaction [Object]
 * 2: action Parms from Ace Interaction [Array]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [target, player, Params] call lts_cop_fnc_requestLicense
 *
 * Public: [Yes/No]
 */

 private _target       = param [0];
 private _player       = param [1];
 private _actionParams = param [2];

[_target, _player, _actionParams] remoteExec ["lts_fnc_getLicense", _target];
