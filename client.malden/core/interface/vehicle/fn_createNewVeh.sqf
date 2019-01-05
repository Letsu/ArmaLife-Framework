/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to the Server to create an new Vehicle in the Vehicle Table in the Database
 *
 * Arguments:
 * 0: Vehicle [Object]
 *
 * Return Value:
 *
 *
 * Example:
 * [vehicle] call lts_interface_fnc_createNewVeh
 *
 */

private _vehicle  = param [0];
private _type     = typeOf _vehicle;
private _ownPID   = _vehicle getVariable ["owner_uid", "NONE"];
private _ownName  = _vehicle getVariable ["owner_name", "NONE"];
private _keyOwn   = _vehicle getVariable ["key_uids", []];
private _keyNames = _vehicle getVariable ["key_names", []];
private _fuel     = fuel _vehicle;
private _inv      = getItemCargo _vehicle;

//Some Checks
_exit = false;
if (_ownPID isEqualTo "NONE") then { ["Server try to Save Vehicle whitout Owner. Maybe this Vehicle is Cheated!"] call lts_fnc_log;  _exit = true };
if (_ownName isEqualTo "NONE") then { ["Server try to Save Vehicle whitout Owner. Maybe this Vehicle is Cheated!"] call lts_fnc_log; _exit = true };

if (_exit) exitWith {
    if (getNumber (missionConfigFile >> "Config_Master" >> "LogCheat")) then {
        [ format ["Server Detected an Vehicle whitout Owner. The Vehicle is maybe Cheated! PlayerUID: %1 Vehicle Type: %2", getPlayerUID player, _type] ] call lts_log_fnc_logCheat;
    };
};

//Send Request to Server!
[_type, _ownPID, _keyOwn, _keyNames, _fuel, _inv] remoteExec ["lts_db_fnc_createNewVehicle", 2];

[0, nil];
