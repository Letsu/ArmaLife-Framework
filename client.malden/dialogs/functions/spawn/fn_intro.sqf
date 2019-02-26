/*
 * Author: Johannes "Letus" Bindriem
 * Spawn an Intro cam when PLayer press Spawn Button
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_intro
 *
 */

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
