/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to the DB to set the available value to 1
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 *
 *
 * Example:
 * [veh] call lts_interface_fnc_disableVehicle
 *
 */
private _vehicle = param [0];
private _plate = _vehicle getVariable ["veh_plate", 000000];

//send Request to Server
[1, _plate] remoteExec ["lts_db_fnc_handleVehicle", 2];

[0, nil];
