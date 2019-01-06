/*
 * Author: Johannes "Letus" Bindriem
 * Function get an Request from lts_db_fnc_createNewMed to Send an Request to the DB to create an new Entry in the Medic Table
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

private _sn = param [0];
private _pid = param [1];
private _medLevel = param [2];

private _data = format ["0:Med:CreateMed:%1:%2:%3",
    _sn,
    _pid,
    _medLevel
    ];

private _query = call compile ("extDB3" callExtension _data);
