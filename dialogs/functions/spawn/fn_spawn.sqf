private["_dispaly", "_spawnList", "_spawnButton", "_curSel", "_spawnMarker", "_spawnPos", "_spawnName", "_oldPlayerPos", "_heightPlayerPos"];
/*
 * Author: Johannes "Letus" Bindriem
 * Executed when player press the Spawn button on the Spawn Menu
 * When Executet the Player set to the Spawn Position, the Cam and Lighzt from the Spawn whould be destroyd and an new Cam whould be created to fly from spawn to zhe place the player spawns!
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call lts_dialog_fnc_spawn;
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


//Spawn for Cam for Intro effect!
[_oldPlayerPos, _heightPlayerPos] spawn {
    _oldPlayerPos = _this select 0;
    _heightPlayerPos = _this select 1;
    //pos 1
    _came1 = "camera" camCreate _oldPlayerPos;
               showCinemaBorder true;
    _came1 cameraEffect ["internal", "BACK"];
    _came1 camCommand "inertia on";

    //Pos 2
    _came1 camPrepareTarget _oldPlayerPos;
    _came1 camPrepareFOV 1;
    _came1 camCommitPrepared 0;

    // pos 3
    _came1 camPreparePos _heightPlayerPos;
    _came1 camPrepareTarget _oldPlayerPos;
    _came1 camPrepareFOV 2;
    _came1 camCommitPrepared 0.5;
    sleep 0.5;

    //Pos 4
    _came1 camPreparePos [5676, 2979, 700];
    _came1 camPrepareTarget player;
    _came1 camPrepareFOV 2;
    _came1 camCommitPrepared 3;
    sleep 2.9;

    // pos 5
    _came1 camPreparePos [(getPos player select 0) + 50, (getPos player select 1), 50];
    _came1 camPrepareTarget player;
    _came1 camPrepareFOV 2;
    _came1 camCommitPrepared 3;
    sleep 3;

    //Pos 6
    _came1 camPreparePos [(getPos player) select 0, (getPos player) select 1, ((getPos player) select 2) + 1];
    _came1 camPrepareTarget player;
    _came1 camPrepareFOV 0.5;
    _came1 camCommitPrepared 2;
    sleep 2;
    _came1 cameraEffect ["TERMINATE","BACK"];
    camDestroy _came1;
};

player setPos _spawnPos;
