/*
 * Author: Johannes "Letus" Bindriem
 * Send Request to Server to Create an new Cop DB Entry
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * noLevel: Player has no Cop Level
 * alreadyInDB: Cop has an Service Number so he added to the DB sometime before
 *
 * Example:
 * [] call lts_interface_fnc_createNewCop
 *
 */

private _copLevel = lts_cop_level;
private _sn = 0;
private _pid = getPlayerUID player;

if (_copLevel == 0) exitWith { ["Player added to Cop DB without an Cop Level!"] call lts_fnc_log; [1, "noLevel"] };
<<<<<<< HEAD
if (player getVariable ["serviceNumber", -1] isEqualTo -1) exitWith { ["Player added to Cop DB is already Cop!"] call lts_fnc_log; [1, "alreadyCop"] };
=======
if (player getVariable ["serviceNumber", -1] isEqualTo -1) exitWith { ["Player added to Cop DB is already Cop!"] call lts_fnc_log; [1, "alreadyInDB"] };
>>>>>>> 04a55f9ea3235f5607bcc7dc69d31341780b6ce0

//Create an New Service Number and set this Var on the Player
while {!(_sn in allServiceNumbers)} do {
    _sn = random [100000, 500000, 999999];
};

allServiceNumbers pushBackUnique _sn;
publicVariable "allServiceNumbers";
player setVariable ["serviceNumber", _sn, true];

[_sn, _pid, _copLevel] remoteExec ["lts_db_fnc_createNewCop", 2];

[0, ""];
