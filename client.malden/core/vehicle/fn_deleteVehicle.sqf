/*
 * Author: Johannes "Letus" Bindriem
 * Löscht das Fahrzeug
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [Vehicle] call lts_fnc_deleteVehicle;
 *
 */

private _veh = param [0, objNull];

//REmove Vehicle form Array
[_veh] call lts_fnc_removeVehicleFromPlayer;

//Delete the Vehicle
deleteVehicle _veh;
