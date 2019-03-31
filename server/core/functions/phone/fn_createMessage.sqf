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

private _message    = param [0, ""];
private _fromNum    = param [1, 000000];
private _toNum      = param [2, 000000];

if (_message isEqualTo "") exitWith { ["No Message passed to createMessage"] call lts_server_fnc_log };


_return = [_message, _fromNum, _toNum];

_return;
