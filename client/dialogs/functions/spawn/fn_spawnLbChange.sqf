private ["_display", "_spawnList", "_spawnButton", "_spawnMap", "_curSel", "_spawnMarker", "_spawnPos", "_spawnName"];
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
_display = findDisplay 60001;
_spawnList = _display displayCtrl 1500;
_spawnButton = _display displayCtrl 1600;
_spawnMap = _display displayCtrl 1001;

_curSel = lbCurSel _spawnList;
_spawnMarker =  _spawnList lbData _curSel;
_spawnPos = getMarkerPos _spawnMarker;
_spawnName = _spawnList lbText _curSel;

_spawnMap ctrlMapAnimAdd [2, 0.2, _spawnPos];
ctrlMapAnimCommit _spawnMap;
