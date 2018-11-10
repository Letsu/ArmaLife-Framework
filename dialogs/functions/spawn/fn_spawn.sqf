private["_dispaly", "_spawnList", "_spawnButton"];
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

_display = findDisplay 60001;
_spawnList = _display displayCtrl 1500;
_spawnButton = _display displayCtrl 1600;

_curSel = lbCurSel _spawnList;
_spawnMarker =  _spawnList lbData _curSel;
_spawnPos = getMarkerPos _spawnMarker;
_spawnName = _spawnList lbText _curSel;

hint format ["%1, %2", _spawnMarker, _spawnName];
player setPos _spawnPos;
