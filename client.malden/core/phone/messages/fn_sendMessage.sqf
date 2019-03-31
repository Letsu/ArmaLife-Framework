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
_message  = param [0, ""];
_toNumber = param [1, -1];
_to       = param [2, player];

if (_toNumber isEqualTo -1) exitWith { ["Wrong Target passed to sendMessage"] call lts_fnc_log };


[_toNumber, _message, _fromNumber] remoteExec ["lts_fnc_reciveMessage", _to];
