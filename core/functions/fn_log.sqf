private ["_msg"];
/*
 * Author: Johannes "Letus" Bindriem
 * Add an Msg to the Logs
 * For Futur Use
 *
 * Arguments:
 * 0: MSG [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["MSG"] call lts_fnc_log
 *
 */
_msg = _this select 0;

diag_log _msg;
