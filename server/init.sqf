/*
 * Author: Johannes "Letus" Bindirem
 * Init of Serverside Scripts
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] exec "\server\init.sqf" From Client
 *
 */

//Set RespawnMarker need an existing marker named "respawn" on the Map
_respawnPos = getMarkerPos "respawn";
"respawn" setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];

//Script for DB setup

//Check if DB exist and create Tabels if needed
[] call lts_db_fnc_createDB


//Call Init of gather Script to create the Farming Fields

//Gather working not on Player net to remote Exec!
[] call lts_server_fnc_initGather;
