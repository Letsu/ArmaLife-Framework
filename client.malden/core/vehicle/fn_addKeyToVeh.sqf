/*
 * Author: Johannes "Letus" Bindriem
 * Add an key of an vehicle to an Player
 * Need to Exec on Player that become the Key
 *
 * Arguments:
 * 0: Vehicle [Object]
 * 1: Owner of the Vehicle
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [Vehicle] call lts_fnc_addKeyToVeh;
 *
 */

private _veh   = param [0, objNull];
private _owner = param [1, player];

private _vehOwner = _veh getVariable ["owner_uid", (getPlayerUID player)];
//Some Checks befor add
if (_vehOwner != (getPlayerUID _owner) ) exitWith { ["Key from non Owner has Given to Player!"] call lts_fnc_log };
if (_veh in lts_core_curVehicles) exitWith { ["Dir wurde ein Schlüssel gegeben den du schon hast"] call lts_fnc_hint };

private _keyUIDs = _veh getVariable ["key_uids", []];
private _newKeyUIDS = _keyUIDs;
private _newKeyUIDS pushBackUnique (getPlayerUID player);

private _keyNames = _veh getVariable ["key_names", []];
private _newKeyNames = _keyNames;
private _newKeyNames pushBackUnique player;


//Set new Variables and add Vehicle to Players Vehicle Array
_veh setVariable ["key_uids" , _newKeyUIDS];;
_veh setVariable ["key_names", _newKeyNames];

lts_core_curVehicles pushBack _veh;
