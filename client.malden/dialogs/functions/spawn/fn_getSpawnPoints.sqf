/*
 * Author: Johannes "Letus" Bindriem
 * Call the Spawn Dialog, Fill the Listbox & create an Camare anamed spaw_cam infront of the Player!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_getSpawnPoints;
 *
 */
private _config = "";
private _allSpawnPoints = [];

//Save the Dispaly in Variable and fill the Listbox
private _DISPLAY = findDisplay 60001;
private _SPAWNLIST = _DISPLAY displayCtrl 1500;

{
    private _pfad = str(_x) splitString "/, \";
    private _config = _pfad select ((count _pfad) - 1);

    //Read config vars
    private _spawnName = getText (missionConfigFile >> "Config_Spawn" >> _config >> "DisplayName");
    private _spawnMarker = getText (missionConfigFile >> "Config_Spawn" >> _config >> "Marker");

    _SPAWNLIST lbAdd (_spawnName);
    _SPAWNLIST lbSetData [(lbSize _spawnList)-1, _spawnMarker];

} forEach ("true" configClasses (missionConfigFile >> "Config_Spawn"));

_SPAWNLIST lbSetCurSel 0;
