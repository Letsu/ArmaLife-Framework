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
_player = param [0, objNull];
_fromNum = param [1, 000000];
_phone = _player getVariable "phone";
private _allMessages = profileNamespace getVariable ["phoneMessages", []];
private _allMessagesToPlayer = [];


{
    _to = _x select 2;
    _from = _x select 1;
    if (_to isEqualTo _phone && _from isEqualTo _fromNum) then {
        _allMessagesToPlayer pushBack _x;
    };
} forEach _allMessages;
