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

_pid = param [0];
_newLevel = param [1, 0];

_data = format ["0:Cop:UpdateCopLevel:%1:%2",
    _pid,
    _newLevel
    ];
_query = call compile ("extDB3" callExtension _data);
