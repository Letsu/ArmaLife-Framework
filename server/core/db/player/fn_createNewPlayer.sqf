/*
 * Author: Johannes "Letus" Bindriem
 * Adds an new player entry in Database
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
_pid       = param [0];
_money     = param [1, 0];
_bank      = param [2, 0];
_licenses  = param [3, "[]"];
_inventory = param [4, "[]"];

_data = format ["Player:CreatePlayer:%1:%2:%3:%4:%5",
    _pid,
    _money,
    _bank,
    _licenses,
    _inventory
    ];

_query = call compile ("extDB3" callExtension _data)
