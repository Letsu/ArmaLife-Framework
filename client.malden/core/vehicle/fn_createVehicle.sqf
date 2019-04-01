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
private _keyUIDs      = param [5, []];
private _keyNames     = param [6, []];
private _fuel         = param [7, 1];
private _inv          = param [8, []];
private _skin         = param [9, []];

//Create the Vehicle at given Pos
private _vehicle = _vehicleClass createVehicle _pos;

[_vehicle] call lts_interface_fnc_disableVehicle;

_vehicle setFuel parseNumber(_fuel);
/* [_vehicle, _inv] call lts_fnc_setVehicleCargo; */


[_vehicle, 20] call ace_cargo_fnc_setSpace;
_wheel = "ACE_Wheel" createVehicle [0, 0, 0];
[_wheel, _vehicle] call ace_cargo_fnc_loadItem;


//Set some Variables on Veh
_vehicle setVariable ["veh_plate", _plate];
_vehicle setVariable ["key_uids" , _keyUIDs];
_vehicle setVariable ["key_names", _keyNames];


_vehicle setVariable [ "owner_uid" , _ownerPID  ]; //Steam64 ID of Owner of Vehicle
_vehicle setVariable [ "owner_name", _ownerName ]; //Display Name of Owener of Vehicle


_vehicle lock 2;

private _giveTicket = [ "giveTicket", "Fahrzeug drehen", "", {  _vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, (getPos _vehicle select 2)+0.5]; }, {}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ _vehicle, 0, ["ACE_MainActions"], _giveTicket ] call ace_interact_menu_fnc_addActionToObject;

vehicle player addEventHandler ["HandleDamage", {
    if ( damage _vehicle isEqualTo 1 ) then {
        [_vehicle] call lts_interface_fnc_destroyVehicle;
    };
    dbug_curDamage = damage _vehicle;
}];
