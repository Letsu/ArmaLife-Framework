/*
 * Author: Johannes "Letus" Bindriem
 * Create an New Vehicle on given Pos, add the vehicle to the Player and give it to the Database
 *
 * Arguments:
 * 0: Vehicle Classname [String]
 * 1: Position of Vehicle on Spawn [Array, Pos]
 * 2 Optimal: The Vehicle Owner [Object]
 * 4 Optimal: UIDs of Key Owners [Array]
 * 5 Optimal: Names of Key Owener [Array]
 *
 *
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["Vehicle ClassName", [0, 0, 0]] call lts_fnc_createVehicle;
 *
 */

private _plate        = param [0, -1 ];
private _vehicleClass = param [1, ""];
private _pos          = param [2, [0, 0, 0]];
private _ownerPID     = param [4, getPlayerUID player];
private _ownerName    = param [5, name player];
private _keyUIDs      = param [6, [] ];
private _keyNames     = param [7, [] ];
private _fuel         = param [8, 1  ];
private _inv          = param [9, [] ];

//Create the Vehicle at given Pos
private _vehicle = _vehicleClass createVehicle _pos;
_vehicle setFuel _fuel;
[_vehicle, _inv] call lts_fnc_setVehicleCargo;
//Add Vehicle in Vehicle Array
//Add for for form Param given Owners!
[_vehicle] call lts_fnc_addKeyToVeh;

//Set some Variables on Veh
_vehicle setVariable ["veh_plate", _plate];
_vehicle setVariable [ "owner_uid" , _ownerPID  ]; //Steam64 ID of Owner of Vehicle
_vehicle setVariable [ "owner_name", _ownerName ]; //Display Name of Owener of Vehicle
