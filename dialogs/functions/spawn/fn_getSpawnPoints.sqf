private["_config", "_allSpawnPoints", "_display", "_spawnList"];
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
_config = "";
_allSpawnPoints = [];

createDialog "SpawnDialog";
waitUntil {!(isNull (findDisplay 60001))};
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
