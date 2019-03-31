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

private _vehicleClass = param [0, ""];
private _pos          = param [1, [0, 0, 0]];
private _owner        = param [2, player]; //Optional
//Add for at Add to Key to add Mutiplay owners on init!
private _keyUIDs      = param [4, [(getPlayerUID player)]]; //Optional
private _keyNames     = param [5, [(name player)]]; //Optional
private _isCopCar     = param [6, false];
private _skin         = param [7, []];

//Create the Vehicle at given Pos
private _vehicle = _vehicleClass createVehicle _pos;
//Add Vehicle in Vehicle Array
//Add for for form Param given Owners!
[_vehicle] call lts_fnc_addKeyToVeh;

private _ownerUID  = getPlayerUID _owner;
private _ownerName = name _owner;

//Set Vehicle Plate
private _plate = random [100000, 500000, 999999];
while {_plate in allVehiclePlates} do {
    _plate = random [100000, 500000, 999999];
};
allVehiclePlates pushBackUnique _plate;
//Disable the Vehicle in Database!
[_vehicle] call lts_interface_fnc_disableVehicle;

//Add to all Vehicles array
lts_core_allVehicles pushBackUnique [_plate, _vehicleClass, _ownerUID, _ownerName, _keyUIDs, _keyNames, 1, [], true];

//Set some Variables on Veh
_vehicle setVariable ["veh_plate", _plate];
_vehicle setVariable [ "owner_uid" , _ownerUID  ]; //Steam64 ID of Owner of Vehicle
_vehicle setVariable [ "owner_obj" , _owner  ]; //Obj of Owner
_vehicle setVariable [ "owner_name", _ownerName ]; //Display Name of Owener of Vehicle

/* if (_skin != []) then {
    _vehicle setObjectTextureGlobal [0, _skin];
}; */


_vehicle lock 2;

if (_isCopCar) then {
    _vehicle setVariable ["copCar", true];

    if (_vehicleClass isEqualTo "Fox_CrownVictoria_NYPD") then {
        _vehicle setObjectTextureGlobal [0, "textures\PoliceVic5.paa"]
    };

    if (_vehicleClass isEqualTo "Fox_2015Tahoe_HWP") then {
        _vehicle setObjectTextureGlobal [0, "textures\PoliceTau2.paa"]
    };

    if (_vehicleClass isEqualTo "Fox_Charger16_HWP") then {
        _vehicle setObjectTextureGlobal [0, "textures\PoliceCha4.paa"]
    };

    if (_vehicleClass isEqualTo "Fox_2003Impala_PoliceHWP") then {
        _vehicle setObjectTextureGlobal [0, "textures\Police03Imp3.paa"]
    };
} else {
    [_vehicle] call lts_interface_fnc_createNewVeh;
    vehicle player addEventHandler ["HandleDamage", {
        if ( damage _vehicle isEqualTo 1 ) then {
            [_vehicle] call lts_interface_fnc_destroyVehicle;
        };
        dbug_curDamage = damage vehicle;
    }];


private _giveTicket = [ "giveTicket", "Strafzettel Ausstellen", "", {  _vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, (getPos _vehicle select 2)+0.5]; }, {}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ _vehicle, 0, ["ACE_MainActions"], _giveTicket ] call ace_interact_menu_fnc_addActionToObject;


}
