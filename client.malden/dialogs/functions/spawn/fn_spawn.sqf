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
private _DISPLAY     = findDisplay 60001;
private _SPAWNLIST   = _DISPLAY displayCtrl 1500;
private _SPAWNBUTTON = _DISPLAY displayCtrl 1600;

private _curSel      = lbCurSel _SPAWNLIST;
private _spawnMarker =  _SPAWNLIST lbData _curSel;
private _spawnPos    = getMarkerPos _spawnMarker;
private _spawnName   = _SPAWNLIST lbText _curSel;

//Delete Cam and Light
spawn_cam cameraEffect ["TERMINATE","BACK"];
camDestroy spawn_cam;
deleteVehicle spawn_light;
spawn_finish = true;
[player,false] remoteExec ["hideObject",-2,true];
closeDialog 0;


//Spawn for Cam for Intro effect!
//------------------------------------------------
//Disabled for DBUG need to enable when on Server!
//--------------------------------------------------
/* [] spawn lts_dialog_fnc_intro */

player setPos _spawnPos;

//display Welcommessage
"Wilkommen auf German Life Gaming" hintC ["Herzlich Wilkommen auf dem Malden Life Server von German Life Gaming.", "Dieser Server ist in einer Frühen Beta Version weshalb noch Lange nicht alle Features fertig oder aktiv sind.", " Wir bitten dich Fehler die während dem Spielen auftretten zu entschuldigen und diese in unserem Forum oder auf unserem Teamspeak beim Support zu melden.", "Farming Taste: <", "Um mit Items zu Interargieren mache einen Doppelklick im Inventar drauf"];

//Leave Group
[player] join player;
