/*
 * Author: Johannes "Letus" Bindriem
 * Send Player Licenses to Cop
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
 * [target, player, params] remoteExec ["lts_fnc_getLicense", target];
 *
 */

 private _player       = param [0];
 private _cop          = param [1];
 private _actionParams = param [2];

_licenses = lts_core_licenses;

[_player, _cop, _actionParams, _licenses] remoteExec ["lts_cop_fnc_getLicense", _cop];
