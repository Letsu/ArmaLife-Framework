private ["_msg"];
/*
 * Author: Johannes "Letus" Bindriem
 * Function to show an Hint on Player Screen
 *
 * Function for Futur use.
 *
 * Arguments:
 * 0: Message [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_fnc_hint
 *
 */

all_msg = [];
_msg = _this select 0;

_pos = size all_msg;
all_msg pushBack _msg;

[_pos, _msg] spawn {
    _pos param [0];
    _msg param [1];
    sleep 10; //Seconeds that an Msg is Displayed

    all_msg = [all_msg, _msg] call lts_fnc_deleteFromArr;
    if (all_msg select _pos isEqualTo _msg) then { ["Msg form all_msg can´t deletet msg!"] call lts_fnc_log };
};

_newMsg = "";
_msgPause = "-----------------";
{
    _newMsg = _newMsg + _msgPause + _x;
} forEach all_msg;

hint _newMsg;
