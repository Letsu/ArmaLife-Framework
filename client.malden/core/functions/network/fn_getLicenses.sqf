/*
 * Author: Johannes "Letus" Bindriem
 * Revice data from lts_fnc_getLicense(lts_cop_fnc_requestLicense) for return license from player to Cop
 *
 * Arguments:
 * 0: Target from Ace Interaction [Object]
 * 1: Player from Ace Interaction [Object]
 * 2: action Parms from Ace Interaction [Array]
 * 3: Licenses form Target [Array]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [player, cop, param, licenses] remoteExec ["lts_fnc_getLicense", cop];
 *
 */

private _target       = param [0];
private _player       = param [1];
private _actionParams = param [2];
private _licenses     = param [3];

private _licenseArr = [];

{
    if (_x select 1) then {
        _licenseArr pushBackUnique (_x select 0)
    };
} forEach _licenses;

[_target, _licenses] remoteExec ["lts_cop_fnc_getLicenseCop", _player]
