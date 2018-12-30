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

diag_log format["PID: %1, Level = %2", _pid, _newLevel];

_data = format ["0:Cop:UpdateCopLevel:%1:%2",
    _newLevel,
    _pid
    ];


    diag_log _data;
_query = call compile ("extDB3" callExtension _data);


diag_log format["Data: %1", _query];
