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
private _display = findDisplay 60001;
private _spawnList = _display displayCtrl 1500;
private _spawnButton = _display displayCtrl 1600;
private _spawnMap = _display displayCtrl 1001;

private _curSel = lbCurSel _spawnList;
private _spawnMarker =  _spawnList lbData _curSel;
private _spawnPos = getMarkerPos _spawnMarker;
private _spawnName = _spawnList lbText _curSel;

//Animate Map
_spawnMap ctrlMapAnimAdd [2, 0.2, _spawnPos];
ctrlMapAnimCommit _spawnMap;
