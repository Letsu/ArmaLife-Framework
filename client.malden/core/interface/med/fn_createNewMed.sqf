/*
 * Author: Johannes "Letus" Bindriem
 * Send Request to Server to Create an new Medic DB Entry
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * noLevel: Player has no Medic Level
 *
 *
 * Example:
 * [] call lts_interface_fnc_createNewMed
 *
 */

private _medLevel = lts_med_level;
private _sn       = 0;
private _pid      = getPlayerUID player;

if (_medLevel isEqualTo 0) exitWith { ["Player added to Medic DB without an Med Level!"] call lts_fnc_log; [1, "noLevel"] };
if (player getVariable ["serviceNumber", -1] isEqualTo -1) exitWith { ["Player added to Cop DB is already Cop!"]; [1, "alreadyInDB"] };


//Create an New Service Number and set this Var on the Player
while {!(_sn in allServiceNumbers)} do {
    _sn = random [100000, 500000, 999999];
};

allServiceNumbers pushBackUnique _sn;
publicVariable "allServiceNumbers";
player setVariable ["serviceNumber", _sn, true];

[_sn, _pid, _medLevel] remoteExec ["lts_db_fnc_createNewMed", 2];

[0, ""];
