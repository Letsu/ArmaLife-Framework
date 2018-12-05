private ["_vehicleClass", "_pos", "_vehicle"];
/*
 * Author: Johannes "Letus" Bindriem
 * Create an Vehicle on given Pos and add the vehicle to the Player
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

_vehicleClass = param [0, ""];
_pos          = param [1, [0, 0, 0]];
_owner        = param [2, player; //Optional
//Add for at Add to Key to add Mutiplay owners on init!
_keyUIDs      = param [4, [(getPlayerUID player)]]; //Optional
_keyNames     = param [5, [(name player)]]; //Optional

//Create the Vehicle at given Pos
_vehicle = _vehicleClass createVehicle _pos;
//Add Vehicle in Vehicle Array
//Add for for form Param given Owners! 
[_vehicle] call lts_fnc_addKeyToVeh;


_ownerUID  = getPlayerUID _owner;
_ownerName = name _owner;

//Set some Variables on Veh
_vehicle setVariable [ "owner_uid" , _ownerUID  ]; //Steam64 ID of Owner of Vehicle
_vehicle setVariable [ "owner_obj" , _owner  ]; //Obj of Owner
_vehicle setVariable [ "owner_name", _ownerName ]; //Display Name of Owener of Vehicle
