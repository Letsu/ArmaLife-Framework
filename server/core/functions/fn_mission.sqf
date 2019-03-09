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
