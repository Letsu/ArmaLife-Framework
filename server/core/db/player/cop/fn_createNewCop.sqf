/*
 * Author: Johannes "Letus" Bindriem
 * Function get an Request from Client to Send an Request to the DB to create an new Entry in the Cop Table
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
 */

_sn = param [0];
_pid = param [1];
_copLevel = param [2];

_data = format ["0:Cop:CreateCop:%1:%2:%3",
    _sn,
    _pid,
    _copLevel
    ];

_query = call compile ("extDB3" callExtension _data);
