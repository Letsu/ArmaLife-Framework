private ["_veh", "_owner", "_vehOwner", "_keyUIDs", "_newKeyUIDS", "_keyNames", "_newKeyNames"];
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

_veh   = param [0, objNull];
_owner = param [1, player];

_vehOwner = _veh getVariable ["owner_uid", (getPlayerUID player)];
//Some Checks befor add
if (_vehOwner != (getPlayerUID _owner) ) exitWith { ["Key from non Owner has Given to Player!"] call lts_fnc_log };
if (_veh in lts_core_curVehicles) exitWith { ["Dir wurde ein Schlüssel gegeben den du schon hast"] call lts_fnc_hint };

_keyUIDs = _veh getVariable "key_uids";
_newKeyUIDS = _keyUIDs;
_newKeyUIDS pushBackUnique player;

_keyNames = _veh getVariable "key_names";
_newKeyNames = _keyNames;
_newKeyNames pushBackUnique player;


//Set new Variables and add Vehicle to Players Vehicle Array
_veh setVariable ["key_uids", _newKeyUIDS];
_veh setVariable ["key_names", _newKeyNames];
lts_core_curVehicles pushBack _veh;
