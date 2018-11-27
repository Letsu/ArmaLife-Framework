/*
 * Author: Johannes "Letus" Bindriem
 * Create Cam on Spawn Pos that th ePLayer see itself.
 * Create Light under Player that the player can see at night.
 * Light and Cam is Global!!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] spawn lts_dialog_fnc_createCam;
 *
 */

spawn_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
spawn_cam cameraEffect ["Internal", "Back"];
spawn_cam camSetTarget (player modelToWorld [0,0,1]);
spawn_cam camSetPos (player modelToWorld [1,4,2]);
spawn_cam camSetFOV .33;
spawn_cam camSetFocus [50, 0];
spawn_cam camCommit 0;

//Set Ligt under the Player
spawn_light = "#lightpoint" createVehicleLocal (getPos player);
spawn_light setLightBrightness 0.5;
spawn_light setLightColor [1,1,1];
spawn_light setLightAmbient [1,1,1];
