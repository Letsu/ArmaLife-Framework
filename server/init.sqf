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

lts_server_setupFinish = false;
publicVariable "lts_server_setupFinish";
["--------------------------------------------"] call lts_server_fnc_log;
["---- Start of Serve Initalisation  ----"] call lts_server_fnc_log;
["--------------------------------------------"] call lts_server_fnc_log;

_successfully = false;

//Set RespawnMarker need an existing marker named "respawn" on the Map
_respawnPos = getMarkerPos "respawn";
"respawn" setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];

["Establishing connection with DB"] call lts_server_fnc_log;
/*_successfully =*/ [] call lts_db_fnc_initDB;
//waitUntil (_successfully);
["Connection with DB successfully"] call lts_server_fnc_log;

["Check if Database is Complet"] call lts_server_fnc_log;
[] call lts_db_fnc_createDB;
["Finish Check if Database is Complet"] call lts_server_fnc_log;




//Call Init of gather Script to create the Farming Fields

//Gather working not on Player net to remote Exec!
[] call lts_server_fnc_initGather;


_data = call compile ("extDB3" callExtension "0:Player:GetPlayerData:123456789");

diag_log str(_data);


["--------------------------------------------"] call lts_server_fnc_log;
["---- Finish of Server Initalisation  ----"] call lts_server_fnc_log;
["--------------------------------------------"] call lts_server_fnc_log;
lts_server_setupFinish = true;
publicVariable "lts_server_setupFinish";
