/*
 * Author: Johannes "Letus" Bindriem
 * Send Request to Server to Create an new Cop DB Entry
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [] call lts_interface_fnc_createNewCop
 *
 */

_copLevel = lts_cop_level;
_sn = 0;
_pid = getPlayerUID player;

//Create an New Service Number and set this Var on the Player
while {!(_sn in allServiceNumbers)} do {
    _sn = random [100000, 500000, 999999];
};

allServiceNumbers pushBackUnique _sn;
player setVariable ["copServiceNumber", _sn, true];

[_sn, _pid, _copLevel] remoteExec ["lts_db_fnc_createNewCop", 2];
