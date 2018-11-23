private ["_vehicleClass", "_pos", "_vehicle"];
/*
 * Author: Johannes "Letus" Bindriem
 * Create an Vehicle on given Pos and add the vehicle to the Player
 *
 * Arguments:
 * 0: Vehicle Classname [String]
 * 1: Position of Vehicle on Spawn [Array, Pos]
 * 2 Optimal: UID of the Vehicle Owner [Number]
 * 3 Optimal: Name of the Vehicle Owner [Text]
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
_ownerUID     = param [2, (getPlayerUID player)]; //Optional
_ownerName    = param [3, (name player)]; //Optional
_keyUIDs      = param [4, [(getPlayerUID player)]]; //Optional
_keyNames     = param [5, [(name player)]]; //Optional

//Create the Vehicle at given Pos
_vehicle = _vehicleClass createVehicle _pos;
//Add Vehicle in Vehicle Array
[_vehicle] call lts_fnc_addVehicleToPlayer;


//Set some Variables on Veh
_vehicle setVariable [ "owner_uid" , _ownerUID  ]; //Steam64 ID of Owner of Vehicle
_vehicle setVariable [ "owner_name", _ownerName ]; //Display Name of Owener of Vehicle
_vehicle setVariable [ "key_uids"  , _keyUIDs   ]; //Steam64 ID: List of all KeyOwener
_vehicle setVariable [ "key_names" , _keyNames  ]; //Name of all Key Oweners
