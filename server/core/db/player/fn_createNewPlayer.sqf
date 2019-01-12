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
private _pid       = param [0];
private _money     = param [1, 0];
private _bank      = param [2, 0];
private _licenses  = param [3, "[]"];
private _inventory = param [4, "[]"];

private _data = format ["0:Player:CreatePlayer:%1:%2:%3:%4:%5",
    _pid,
    _money,
    _bank,
    _licenses,
    _inventory
    ];
    
private _query = call compile ("extDB3" callExtension _data);
