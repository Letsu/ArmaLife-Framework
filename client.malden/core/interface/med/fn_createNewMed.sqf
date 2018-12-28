/*
 * Author: Johannes "Letus" Bindriem
 * Send Request to Server to Create an new Med DB Entry
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * noLevel: Player has no Med Level
 * alreadyInDB: Med has an Service Number so he added to the DB sometime before
 *
 * Example:
 * [] call lts_interface_fnc_createNewMed
 *
 */

private _level = lts_med_level;
private _sn = 0;
private _hasSN = false;
private _curSN = player getVariable ["serviceNumber", -1];
private _pid = getPlayerUID player;

if (_level == 0) exitWith { ["Player added to Cop DB without an Cop Level!"] call lts_fnc_log; [1, "noLevel"] };
if (_curSN != -1 && _curSN < 499999) exitWith { ["Player added to Med DB is already Medic!"]; [1, "alreadyInDB"] };
if (_curSN != -1 && _curSN > 500000) then { _hasSN = true; _sn = _curSN }; //Players has already an SN so


//Create an New Service Number and set this Var on the Player Med Range is 100000 to 499999
while {!(_sn in allServiceNumbers) && !(_hasSN)} do {
    _sn = random [100000, 250000, 499999];
};
allServiceNumbers pushBackUnique _sn;
publicVariable "allServiceNumbers";
player setVariable ["serviceNumber", _sn, true];

[_sn, _pid, _level] remoteExec ["lts_db_fnc_createNewMed", 2];

[0, ""];
