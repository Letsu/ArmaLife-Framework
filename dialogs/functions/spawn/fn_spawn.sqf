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

//Delete Cam and Light
spawn_cam cameraEffect ["TERMINATE","BACK"];
camDestroy spawn_cam;
deleteVehicle spawn_light;
spawn_finish = true;
closeDialog 0;

_oldPlayerPos = getPos player;
_heightPlayerPos = [_oldPlayerPos select 0, _oldPlayerPos select 1, 10];
player setPos _spawnPos;

[_oldPlayerPos, _heightPlayerPos] spawn {
    _oldPlayerPos = _this select 0;
    _heightPlayerPos = _this select 1;
    //pos 1
    came1 = "camera" camCreate _oldPlayerPos;
               showCinemaBorder true;

    came1 cameraEffect ["internal", "BACK"];
    came1 camCommand "inertia on";

    came1 camPrepareTarget _oldPlayerPos;
    came1 camPrepareFOV 1;
    came1 camCommitPrepared 0.5;

    // pos 2
    came1 camPreparePos _heightPlayerPos;
    came1 camPrepareTarget _oldPlayerPos;
    came1 camPrepareFOV 2;
    came1 camCommitPrepared 1;
    sleep 1.5;

    came1 camPreparePos [5676, 2979, 700];
    came1 camPrepareTarget player;
    came1 camPrepareFOV 2;
    came1 camCommitPrepared 3;
    sleep 3;

    // pos 3
    came1 camPreparePos [(getPos player select 0) + 50, (getPos player select 1), 50];
    came1 camPrepareTarget player;
    came1 camPrepareFOV 2;
    came1 camCommitPrepared 3;
    sleep 3;

    came1 camPreparePos getPos player;
    came1 camPrepareTarget player;
    came1 camPrepareFOV 0.5;
    came1 camCommitPrepared 1;
    /*
    came1 cameraEffect ["internal", "BACK"];
    came1 camCommand "inertia on";
    */
    sleep 1;
    came1 cameraEffect ["TERMINATE","BACK"];
    camDestroy came1;
};
