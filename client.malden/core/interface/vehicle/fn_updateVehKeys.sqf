/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to the DB to set the available value to 0
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 *
 *
 * Example:
 * [veh] call lts_interface_fnc_enableVehicle
 *
 */
private _vehicle = param [0];
private _plate = _vehicle getVariable ["veh_plate", 000000];
private _keyOwn   = _vehicle getVariable ["key_uids", []];
private _keyNames = _vehicle getVariable ["key_names", []];

//send Request to Server
 [4, _plate, _keyOwn, _keyNames] remoteExec ["lts_db_fnc_handleVehicle", 2];

[0, nil];
