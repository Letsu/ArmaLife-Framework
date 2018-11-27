/*
 * Author: Johannes "letus" Bindriem
 * Open the Spawn Dialog and call the Functions that fills the Listboxes
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_callSpawn
 *
 */

 //Check if Display is opend and crate an Eventhandler to Disable the ESC Key that the Player can´t exit in Spawn screen
waitUntil {!(isNull (findDisplay 46))};


//New Thread to check if Dialog has not open and call the Function new
[] spawn {
    sleep 1;
    if (isNull (findDisplay 60001) && !(spawn_finish)) then {
        [] call lts_dialog_fnc_callSpawn;
    };
};

//Create the Dialog
createDialog "SpawnDialog";
waitUntil {!(isNull (findDisplay 60001))};
//Add Keyhandler to Dialog for disablle all Keys
(findDisplay 60001) displayAddEventHandler ["KeyDown","if (!((_this select 1) isEqualTo 28)) then { true } "]; //Disaple the ESC Key in the Dialog that the can´t close the Dialog!

//Spawn the function to create an Cam
[] spawn lts_dialog_fnc_createCam;

//Set Player Pos to Spawn Pos
player setPos (getMarkerPos "spawn_marker"); // add an Config option and More Positions!
player setDir (random 356);
player action ["WeaponOnBack", player];

//Fill list Box
[] call lts_dialog_fnc_getSpawnPoints;
