/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call lts_server_fnc_log;
 *
 * Public: [Yes/No]
 */

 _msg = param [0, ""];

 diag_log _msg;
