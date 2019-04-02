/*
 * Author: Johannes "letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
_marker = param [0, ""];
if (_marker isEqualTo "") exitWith {};

//Geht Vehicle in Range of 10m of the Spawn Marker
private _vehicles = nearestObjects [(getmarkerPos _marker), ["LandVehicle", "Ship", "Air"], 10];
if !(count _vehicles > 0) exitWith { ["Es steht kein Fahrzeug am Spawn"] call lts_fnc_hint };

//Get Vars & Check if Vehicle exits and is from Players
private _vehicle = _vehicles select 0;
private _owner   = _vehicle getVariable "owner_uid";
private _key     = _vehicle getVariable "key_uids";
if !(_owner isEqualTo (getPlayerUID player))    exitWith { ["Es steht kein fahrzeug am Spawn!"] call lts_fn_hint };
if !(alive _vehicle)                            exitWith { ["Es steht kein Fahrzeug am Spawn!"] call lts_fnc_hint };
if (isNull _vehicle)                            exitWith { ["Es steht kein Fahrzeug am Spawn!"] call lts_fnc_hint };
if (isNil "_vehicle")                           exitWith { ["Es steht kein Fahrzeug am Spawn!"] call lts_fnc_hint };

//enable Vehicle in Database and remove Vehicle
[ format["Du hast dein %1 eingeparkt.", [typeOf(_vehicle)] call lts_fnc_getDisplayName] ] call lts_fnc_hint;
[_vehicle] call lts_interface_fnc_enableVehicle;
deleteVehicle _vehicle;
