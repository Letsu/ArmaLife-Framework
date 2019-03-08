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
private _DISPLAY          = findDisplay 40001;
private _LBPLAYERS        = _DISPLAY displayCtrl 1003;
private _LBWANTED         = _DISPLAY displayCtrl 1009;
private _LBINFO           = _DISPLAY displayCtrl 1013;

lbClear _LBINFO;
lbClear _LBWANTED;

private _curSel = lbCurSel _LBPLAYERS;
private _target = lts_dialog_wanted_lbPlayerList select _curSel;

_TEXTWANTED ctrlSetFade 1;
_TEXTWANTED ctrlCommit 0;

//GET Wanted List entrys
[_target] call lts_interface_fnc_requestWanted
