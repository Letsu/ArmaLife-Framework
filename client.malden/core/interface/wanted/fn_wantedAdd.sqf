/*
 * Author: Johannes "letus" Bindriem
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
/* private _copUID     = param [0];
private _copName    = param [1];
private _targetUID  = param [2];
private _targetName = param [3];
private _title  	= param [4];
private _note       = param [5];
private _price      = param [6]; */


hint "Interface wird gesendet";
_this remoteExec ["lts_db_fnc_addWanted", 2];
