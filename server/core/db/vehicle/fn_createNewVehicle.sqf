/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to teh Database to create an new Vehicle Entry
 *
 * Arguments:
 * 0: VehicleClass [String]
 * 1: Owner Id [String]
 * 2: Key Owner Uids [Array]
 * 3: Key Owner Name [Array]
 * 4: Vehicle Fuel [Number]
 * 5: Inventory [Array]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [type, ownerPID, keyOwner, keyNames, fuel, inv] remoteExec ["lts_db_fnc_createNewVehicle", 2];
 *
 */
private _type     = param [0];
private _ownPID   = param [1];
private _ownName  = param [2]
private _ownName  = param [3];
private _keyOwn   = param [4];
private _keyNames = param [5];
private _fuel     = param [6];
private _inv      = param [7];
