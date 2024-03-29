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

private _pid = param [0];
private _newLevel = param [1, 0];

private _data = format ["0:Cop:UpdateCopLevel:%1:%2",
    _newLevel,
    _pid
    ];

private _query = call compile ("extDB3" callExtension _data);
