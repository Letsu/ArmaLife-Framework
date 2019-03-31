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

private _message = param [0, ""];
private _fromNum = param [1, 000000];
private _toNUm   = param [2, 000000];

private _message = [_messagem, _fromNum, _toNum] call lts_server_fnc_createMessage;

private _allMessages = profileNamespace getVariable ["phoneMessages", []];

_allMessages pushBack _message;

profileNamespace setVariable ["phoneMessages", _allMessages];
saveProfileNamespace;

{
    private _phone = _x getVariable "phone";

    if (_toNum isEqualTo _phone) then {
        _message remoteExec ["lts_fnc_reciveMessage", _x];
    };
} forEach allPlayers;
