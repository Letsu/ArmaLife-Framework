/*
 * Author: Johannes "Letus" bindriem
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

 _DISPLAY          = findDisplay 40001;
 _LBPLAYERS        = _DISPLAY displayCtrl 1003;
 _LBWANTED        = _DISPLAY displayCtrl 1009;
 _LBINFO          = _DISPLAY displayCtrl 1013;

 lbClear _LBINFO;
 lbClear _LBWANTED;

systemChat "Change";
//For testing:
[[[1, "1.2. 12:23", "847567374657238465", "Letus Lemurus", "847567374657238465", "Letus Lemurus", "Geschwindichkeits Übertretung", "Ist in Pyrgox mit 60km/h gefahren!", 1500], [3, "06.03.2019 12:23", "8475673746572383235", "Manfred Stein", "847567374657238465", "Letus Lemurus", "Körperverletung", "Hat jemanden Angegriffen!", 1500], [2, "06.03.2019 12:23", "8475673746572383235", "Manfred Stein", "847567374657238465", "Letus Lemurus", "Körperverletung2", "Hat noch jemanden Angegriffen!", 1500]]] call lts_dialog_fnc_setWantedValues;
/* [[]] call lts_dialog_fnc_setWantedValues; */


/* systemChat "Change";

_DISPLAY          = findDisplay 40001;
_LBPLAYERS        = _DISPLAY displayCtrl 1003;
_LBWANTED        = _DISPLAY displayCtrl 1009;
_LBINFO          = _DISPLAY displayCtrl 1013;

lbClear _LBPLAYERS;
lbClear _LBWANTED;

_curSel = lbCurSel _LBPLAYERS;
_target = lts_dialog_wanted_lbPlayerList select _curSel;

//GET Wanted List entrys
[_target] call lts_interface_fnc_requestWanted */
