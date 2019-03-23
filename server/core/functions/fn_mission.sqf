/*
 * Author: Johannes "Letus" Bindriem
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


//Set Spawn Marker
private _respawnPos = getMarkerPos "respawn";
"respawn" setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];

//Set Cop Vehicel Spawn Marker
private _vehShop = getMarkerPos "pl_csp1";
"pl_csp1" setMarkerPos [_vehShop select 0, _vehShop select 1, 0.5];

//set Hospital
//Main
_hs = createVehicle ["Land_Hospital_main_F", [0,0,0], [], 0, "NONE"];
_hs setDir 131.256;
_hs setPosATL [7948.236, 3274.627, 0];
//Side 1
_var = createVehicle ["Land_Hospital_side1_F", [0,0,0], [], 0, "NONE"];
_var attachTo [_hs, [4.69775,32.6045,-0.1125]];
detach _var;
//Site 2
_var = createVehicle ["Land_Hospital_side2_F", [0,0,0], [], 0, "NONE"];
_var attachTo [_hs, [-28.0336,-10.0317,0.0889387]];
detach _var;
