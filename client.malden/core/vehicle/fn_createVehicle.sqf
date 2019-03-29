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
private _ownerPID     = param [3, getPlayerUID player];
private _ownerName    = param [4, name player];
private _keyUIDs      = param [5, [] ];
private _keyNames     = param [6, [] ];
private _fuel         = param [7, 1  ];
private _inv          = param [8, [] ];
private _allVehPos    = param [9, -1];
private _skin         = param [10, []];

//Create the Vehicle at given Pos
private _vehicle = _vehicleClass createVehicle _pos;
_vehicle setFuel _fuel;
[_vehicle, _inv] call lts_fnc_setVehicleCargo;
//Add Vehicle in Vehicle Array
//Add for for form Param given Owners!
/* [_vehicle] call lts_fnc_addKeyToVeh; */
_vehicle setVariable ["key_uids" , _keyUIDs];
_vehicle setVariable ["key_names", _keyNames];


//Set some Variables on Veh
_vehicle setVariable ["veh_plate", _plate];
//Disable the Vehicle in Database & Array!
[_vehicle] call lts_interface_fnc_disableVehicle;
if (_allVehPos != -1) then {
    (lts_core_allVehicles select _allVehPos) set [8, true]; //set Vehicle as Parked Out!
};
_vehicle setVariable [ "owner_uid" , _ownerPID  ]; //Steam64 ID of Owner of Vehicle
_vehicle setVariable [ "owner_name", _ownerName ]; //Display Name of Owener of Vehicle


_vehicle lock 2;
