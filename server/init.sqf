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

private _successfully = false;

["Handeling Objects on Map"] call lts_server_fnc_log;
[] spawn lts_server_fnc_mission;
["Finish Handeling Objects on Map"] call lts_server_fnc_log;

["Establishing connection with DB"] call lts_server_fnc_log;
[] call lts_db_fnc_initDB;
["Connection with DB successfully"] call lts_server_fnc_log;

["Check if Database is Complet"] call lts_server_fnc_log;
[] call lts_db_fnc_createDB;
["Finish Check if Database is Complet"] call lts_server_fnc_log;

["Get Static Global Variables"] call lts_server_fnc_log;
[] call lts_db_fnc_staticVars;
["Finish Getting Static Global Variables"] call lts_server_fnc_log;

//Create Group for Medics & cops
allMedicGroup = createGroup [civilian, false];
allCopGroup   = createGroup [civilian, false];

_query = call compile ("extDB3" callExtension "0:Vehicle:ResetVehicles");

["--------------------------------------------"] call lts_server_fnc_log;
["----- Finish of Server Initalisation  ------"] call lts_server_fnc_log;
["--------------------------------------------"] call lts_server_fnc_log;
lts_server_setupFinish = true;
publicVariable "lts_server_setupFinish";
