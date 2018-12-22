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
 * [] exec "\server\init.sqf"
 *
 */

lts_server_setupFinish = false;
publicVariable "lts_server_setupFinish";
["--------------------------------------------"] call lts_server_fnc_log;
["------ Start of Server Initalisation  ------"] call lts_server_fnc_log;
["--------------------------------------------"] call lts_server_fnc_log;

_successfully = false;

["Handeling Objects on Map"] call lts_server_fnc_log;
_respawnPos = getMarkerPos "respawn";
"respawn" setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];
["Finish Handeling Objects on Map"] call lts_server_fnc_log;

["Establishing connection with DB"] call lts_server_fnc_log;
[] call lts_db_fnc_initDB;
["Connection with DB successfully"] call lts_server_fnc_log;

["Check if Database is Complet"] call lts_server_fnc_log;
[] call lts_db_fnc_createDB;
["Finish Check if Database is Complet"] call lts_server_fnc_log;

["Get Static Global Variables"] call lts_server_fnc_log;
[] call lts_db_fnc_getServiceNumbers;
["Finish Getting Static Global Variables"] call lts_server_fnc_log;

["--------------------------------------------"] call lts_server_fnc_log;
["----- Finish of Server Initalisation  ------"] call lts_server_fnc_log;
["--------------------------------------------"] call lts_server_fnc_log;
lts_server_setupFinish = true;
publicVariable "lts_server_setupFinish";
