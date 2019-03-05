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
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

private _target      = param [0];
private _player      = param [1];
private _actionParam = param [2];

//Create Global Variable save target and find an better way to do it :)
lts_dialog_ticket_target = _target;


waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "ticket";
waitUntil {!(isNull (findDisplay 60001))};

//Set ACtion to Button
private _DISPALY = findDisplay 60001;
private _TICKETBUTTON = _display displayCtrl 60020;

((findDisplay 60001) displayCtrl 60020) buttonSetAction "call lts_dialog_fnc_sendTicket"
