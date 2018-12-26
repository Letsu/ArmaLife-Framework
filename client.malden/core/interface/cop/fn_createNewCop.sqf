/*
 * Author: Johannes "Letus" Bindriem
 * Send Request to Server to Create an new Cop DB Entry
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * noLevel: Player has no Cop Level
 * alreadyCop: Cop has an Service Number so he added to the DB sometime before
 *
 * Example:
 * [] call lts_interface_fnc_createNewCop
 *
 */

_copLevel = lts_cop_level;
_sn = 0;
_pid = getPlayerUID player;

if (_copLevel == 0) exitWith { ["Player added to Cop DB without an Cop Level!"] call lts_fnc_log; [1, "noLevel"] };
if (player getVariable ["serviceNumber", -1] isEqualTo -1) exitWith { x["Player added to Cop DB is already Cop!"]; [1, "alreadyCop"] };

//Create an New Service Number and set this Var on the Player
while {!(_sn in allServiceNumbers)} do {
    _sn = random [100000, 500000, 999999];
};

allServiceNumbers pushBackUnique _sn;
publicVariable "allServiceNumbers";
player setVariable ["serviceNumber", _sn, true];

[_sn, _pid, _copLevel] remoteExec ["lts_db_fnc_createNewCop", 2];

[0, ""];
