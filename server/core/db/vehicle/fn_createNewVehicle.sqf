/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to teh Database to create an new Vehicle Entry
 *
 * Arguments:
 * 0: Vehicle Plate [Number]
 * 1: VehicleClass [String]
 * 2: Owner Id [String]
 * 3: Owner Name [String]
 * 4: Key Owner Uids [Array]
 * 5: Key Owner Name [Array]
 * 6: Vehicle Fuel [Number]
 * 7: Inventory [Array]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [plate, type, ownerPID, keyOwner, keyNames, fuel, inv] remoteExec ["lts_db_fnc_createNewVehicle", 2];
 *
 */
private _plate    = param [0];
private _type     = param [1];
private _ownPID   = param [2];
private _ownName  = param [3];
private _keyOwn   = param [4];
private _keyNames = param [5];
private _fuel     = param [6];
private _inv      = param [7]; //Own Table

_data = format ["0:Vehicle:CreateVehicle:%1:%2:%3:%4:%5:%6:%7:%8",
    _plate,
    _type,
    _ownPID,
    _ownName,
    _keyOwn,
    _keyNames,
    _fuel,
    _inv
    ];

_query = call compile ("extDB3" callExtension _data);
