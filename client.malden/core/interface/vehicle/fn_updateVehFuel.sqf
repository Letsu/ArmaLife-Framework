/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to the DB to set the fuel of the Vehicle
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 *
 *
 * Example:
 * [veh] call lts_interface_fnc_destroyVehicle
 *
 */
private _vehicle = param [0];
private _plate = _vehicle getVariable ["veh_plate", 000000];
private _fuel = fuel _vehicle;

//send Request to Server
 [3, _plate, _fuel] remoteExec ["lts_db_fnc_handleVehicle", 2];



[0, nil];
