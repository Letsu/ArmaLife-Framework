/*
 * Author: Johannes "Letus" Bindriem
 * Send Request to Server to Create an new Cop DB Entry
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * 0: Error Code 0 when sucsessly
 *
 * Example:
 * [] call lts_interface_fnc_createNewCop
 *
 */

_copLevel = lts_cop_level;
_sn = 0;
_pid = getPlayerUID player;

if (_copLevel = 0) exitWith { ["PLayer added to Cop Db whithout an Cop Level!"] call lts_fnc_log };

//Create an New Service Number and set this Var on the Player
while {!(_sn in allServiceNumbers)} do {
    _sn = random [100000, 500000, 999999];
};

allServiceNumbers pushBackUnique _sn;
player setVariable ["copServiceNumber", _sn, true];

[_sn, _pid, _copLevel] remoteExec ["lts_db_fnc_createNewCop", 2];

[1, "noCopLevel"];
