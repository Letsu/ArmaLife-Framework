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
 * [] call lts_db_fnc_initDB
 *
 */
_successfully = false;


"extDB3" callExtension "9:RESET";

_connection = call compile ("extDB3" callExtension "9:ADD_DATABASE:arma");

_createDB   = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:CreateDB:createDB.ini");
_player     = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:Player:player.ini"); //own Inv database
_passport   = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:Passport:passport.ini");
_vehicle    = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:Vehicle:vehicle.ini");
_wanted     = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:Wanted:wanted.ini");

//Side DBS
_cop = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:Cop:cop.ini");
_med = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arma:SQL_CUSTOM:Med:med.ini");


"extDB3" callExtension "9:LOCK:unlock_me";


//Check if all connections successfully
if (_connection select 0 isEqualTo 0) exitWith { [format["Error whit Database Connection: %1", _connection select 1] ] call lts_server_fnc_log; _successfully };

if (_createDB select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection createDB: %1", _createDB select 1] ] call lts_server_fnc_log; _successfully };
if (_player select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection player: %1", _player select 1] ] call lts_server_fnc_log; _successfully };
if (_passport select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection passport: %1", _passport select 1] ] call lts_server_fnc_log; _successfully };
if (_vehicle select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection vehicle: %1", _vehicle select 1] ] call lts_server_fnc_log; _successfully };
if (_wanted select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection wanted: %1", _wanted select 1] ] call lts_server_fnc_log; _successfully };

//Side
if (_cop select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection cop: %1", _cop select 1] ] call lts_server_fnc_log; _successfully };
if (_med select 0 isEqualTo 0) exitWith { [format["Error whit Database Protocol Connection med: %1", _med select 1] ] call lts_server_fnc_log; _successfully };

_successfully = true;
_successfully;
