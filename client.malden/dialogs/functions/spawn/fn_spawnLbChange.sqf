/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_spawnLbChange;
 *
 */

 //Get Display and Data
private _DISPLAY     = findDisplay 60001;
private _SPAWNLIST   = _DISPLAY displayCtrl 1500;
private _SPAWNBUTTON = _DISPLAY displayCtrl 1600;
private _SPAWNMAP    = _DISPLAY displayCtrl 1001;

private _curSel = lbCurSel _SPAWNLIST;
private _spawnMarker =  _SPAWNLIST lbData _curSel;
private _spawnPos = getMarkerPos _spawnMarker;
private _spawnName = _SPAWNLIST lbText _curSel;

//Animate Map
_SPAWNMAP ctrlMapAnimAdd [2, 0.2, _spawnPos];
ctrlMapAnimCommit _SPAWNMAP;
