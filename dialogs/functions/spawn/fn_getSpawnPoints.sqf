private["_config", "_allSpawnPoints", "_display", "_spawnList"];
/*
 * Author: Johannes "Letus" Bindriem
 * Call the Spawn Dialog, Fill the Listbox & create an Camare anamed spaw_cam infront of the Player!
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [] call lts_dialog_fnc_getSpawnPoints;
 *
 * Public: [Yes/No]
 */
_config = "";
_allSpawnPoints = [];

createDialog "SpawnDialog";
waitUntil {!(isNull (findDisplay 60001))};
(findDisplay 60001) displayAddEventHandler ["KeyDown","if ((_this select 1) isEqualTo 1) then { true } "]; //Disaple the ESC Key in the Dialog that the can´t close the Dialog!

//Set Cam infront of PLayer on Spawn
player setPos (getMarkerPos "spawn_marker"); // add an Config option and More Positions!
player setDir (random 356);
spawn_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
spawn_cam cameraEffect ["Internal", "Back"];
spawn_cam camSetTarget (player modelToWorld [0,0,1]);
spawn_cam camSetPos (player modelToWorld [1,4,2]);
spawn_cam camSetFOV .33;
spawn_cam camSetFocus [50, 0];
spawn_cam camCommit 0;

//spawn_cam cameraEffect ["TERMINATE","BACK"];

//Display
_display = findDisplay 60001;
_spawnList = _display displayCtrl 1500;


{
    _pfad = str(_x) splitString "/, \";
    _config = _pfad select ((count _pfad) - 1);

    _spawnName = getText (missionConfigFile >> "Config_Spawn" >> _config >> "DisplayName");
    _spawnMarker = getText (missionConfigFile >> "Config_Spawn" >> _config >> "Marker");

    _spawnList lbAdd (_spawnName);
    _spawnList lbSetData [(lbSize _spawnList)-1, _spawnMarker];

} forEach ("true" configClasses (missionConfigFile >> "Config_Spawn"));

_spawnList lbSetCurSel 0;
