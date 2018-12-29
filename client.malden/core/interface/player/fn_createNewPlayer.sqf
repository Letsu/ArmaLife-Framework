private ["_pid", "_cash", "_bank", "_licenses", "_inv"];
/*
 * Author: Johannes "Letus" Bindriem
 * Send request to Server[lts_db_fnc_createNewPlayer] to create an new Player in Database
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_interface_fnc_createNewPlayer;
 *
 */

_pid = getPlayerUID player;
_licenses = lts_core_licenses;
_inv = getUnitLoadout player;

_startMoney = getNumber (missionConfigFile >> "Config_Master" >> "StartMoney");
_startBank  = getNumber (missionConfigFile >> "Config_Master" >> "StartBank");

//Set Start Money
lts_money_cash = _startMoney;
lts_money_bank = _startBank;
lts_core_firstSpawn = true;


[_pid, _startMoney, _startBank, _licenses, _inv] remoteExec ["lts_db_fnc_createNewPlayer", 2];
