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

private _vehicles = nearestObjects [(getmarkerPos _marker), ["LandVehicle", "Ship", "Air"], 10];
if !(count _vehicles > 0) exitWith { ["Es steht kein Fahrzeug am Spawn"] call lts_fnc_hint };

private _vehicle = _vehicles select 0;
private _owner = _vehicle getVariable "owner_uid";
private _key   = _vehicle getVariable "key_uids";
if !(_owner isEqualTo (getPlayerUID player)) exitWith { ["Es steht kein fahrzeug am Spawn"] call lts_fn_hint };

hint "Du hast dein fahrzeug eingeparkt!";
[_vehicle] call lts_interface_fnc_enableVehicle;
deleteVehicle _vehicle;
