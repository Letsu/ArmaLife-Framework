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

private _pid = getPlayerUID player;
private _licenses = lts_core_licenses;
private _inv = getUnitLoadout player;

private _startMoney = getNumber (missionConfigFile >> "Config_Master" >> "StartMoney");
private _startBank  = getNumber (missionConfigFile >> "Config_Master" >> "StartBank");

//Set Start Money
lts_money_cash = _startMoney;
lts_money_bank = _startBank;
lts_core_firstSpawn = true;

//Create Phone NUmber
_phone = random [100000, 500000,999999];
player setVariable ["phone", _phone];


[_pid, _startMoney, _startBank, _licenses, _inv, _phone] remoteExec ["lts_db_fnc_createNewPlayer", 2];
