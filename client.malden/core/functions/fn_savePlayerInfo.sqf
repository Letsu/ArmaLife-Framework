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

["Spieler Daten werden in der Datenabnk gespeichert!"] call lts_fnc_log;
[] call lts_interface_fnc_updateBank;
[] call lts_interface_fnc_updateCash;
[] call lts_interface_fnc_updateInv;
[] call lts_interface_fnc_updateLicense;
["Spieler Daten wurden in der Datenabnk gespeichert!"] call lts_fnc_log;
