/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to the Server to create an new Vehicle in the Vehicle Table in the Database
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 * 
 *
 * Example:
 * [vehicle] call lts_interface_fnc_createNewVeh
 *
 */

private _vehicle = param [0];
private _ownPID   = _vehicle getVariable ["owner_uid", getPlayerUID player];
private _keyOwn   = _vehicle getVariable ["key_uids", []];
private _keyNames = _vehicle getVariable ["key_names", []];
private _fuel     = fuel _vehicle;
private _inv      = getItemCargo _vehicle;

//Some Checks


//Send Request to Server!

[0, nil];
