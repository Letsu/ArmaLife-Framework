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

private _level = lts_cop_level;
private _sn = 0;
private _hasSN = false;
private _curSN = player getVariable ["serviceNumber", -1];
private _pid = getPlayerUID player;

if (_level == 0) exitWith { ["Player added to Cop DB without an Cop Level!"] call lts_fnc_log; [1, "noLevel"] };
if (_curSN != -1 && _curSN > 499999) exitWith { ["Player added to Cop DB is already Cop!"]; [1, "alreadyInDB"] };
if (_curSN != -1 && _curSN < 500000) then { _hasSN = true; _sn = _curSN }; //Players has already an SN so


//Create an New Service Number and set this Var on the Player Cop Range is 500000 to 999999
while {!(_sn in allServiceNumbers) && !(_hasSN)} do {
    _sn = random [500000, 650000, 999999];
};
allServiceNumbers pushBackUnique _sn;
publicVariable "allServiceNumbers";
player setVariable ["serviceNumber", _sn, true];

[_sn, _pid, _level] remoteExec ["lts_db_fnc_createNewCop", 2];

[0, ""];
