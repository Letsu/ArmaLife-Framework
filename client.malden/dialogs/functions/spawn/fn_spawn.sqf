private["_dispaly", "_spawnList", "_spawnButton", "_curSel", "_spawnMarker", "_spawnPos", "_spawnName", "_oldPlayerPos", "_heightPlayerPos"];
/*
 * Author: Johannes "Letus" Bindriem
 * Executed when player press the Spawn button on the Spawn Menu
 * When Executet the Player set to the Spawn Position, the Cam and Lighzt from the Spawn whould be destroyd and an new Cam whould be created to fly from spawn to zhe place the player spawns!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_spawn;
 *
 */

//Get the Dialog Controls and the Data
_display     = findDisplay 60001;
_spawnList   = _display displayCtrl 1500;
_spawnButton = _display displayCtrl 1600;

_curSel      = lbCurSel _spawnList;
_spawnMarker =  _spawnList lbData _curSel;
_spawnPos    = getMarkerPos _spawnMarker;
_spawnName   = _spawnList lbText _curSel;

//Delete Cam and Light
spawn_cam cameraEffect ["TERMINATE","BACK"];
camDestroy spawn_cam;
deleteVehicle spawn_light;
spawn_finish = true;
closeDialog 0;


//Spawn for Cam for Intro effect!
//------------------------------------------------
//Disabled for DBUG need to enable when on Server!
//--------------------------------------------------

/*
[] spawn {
    //Get PLayer Pos
    _oldPlayerPos    = getPos player;
    _heightPlayerPos = [_oldPlayerPos select 0, _oldPlayerPos select 1, 10];

    //pos 1
    _cam1 = "camera" camCreate _oldPlayerPos;
               showCinemaBorder true;
    _cam1 cameraEffect ["internal", "BACK"];
    _cam1 camCommand "inertia on";

    //Pos 2
    _cam1 camPrepareTarget _oldPlayerPos;
    _cam1 camPrepareFOV 1;
    _cam1 camCommitPrepared 0;

    // pos 3
    _cam1 camPreparePos _heightPlayerPos;
    _cam1 camPrepareTarget _oldPlayerPos;
    _cam1 camPrepareFOV 2;
    _cam1 camCommitPrepared 0.5;
    sleep 0.5;

    //Pos 4
    _cam1 camPreparePos [5676, 2979, 700];
    _cam1 camPrepareTarget player;
    _cam1 camPrepareFOV 2;
    _cam1 camCommitPrepared 3;
    sleep 2.9;

    // pos 5
    _cam1 camPreparePos [(getPos player select 0) + 50, (getPos player select 1), 50];
    _cam1 camPrepareTarget player;
    _cam1 camPrepareFOV 2;
    _cam1 camCommitPrepared 3;
    sleep 3;

    //Pos 6
    _cam1 camPreparePos [(getPos player) select 0, (getPos player) select 1, ((getPos player) select 2) + 1];
    _cam1 camPrepareTarget player;
    _cam1 camPrepareFOV 0.5;
    _cam1 camCommitPrepared 2;
    sleep 2;
    _cam1 cameraEffect ["TERMINATE","BACK"];
    camDestroy _cam1;
};
*/
player setPos _spawnPos;
