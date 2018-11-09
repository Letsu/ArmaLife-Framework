private["_config", "_allSpawnPoints"];
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
_spawnList = _display displayCtrl 60500;


{
    _pfad = str(_x) splitString "/, \";
    _config = _pfad select ((count _pfad) - 1);
    config2 = _config;
    _allSpawnPoints pushBackUnique _config;

} forEach ("true" configClasses (missionConfigFile >> "Config_Spawn"));

{
    _spawnName = getText (missionConfigFile >> "Config_Spawn" >> _x >> "DisplayName");
    _spawnMarker = getText (missionConfigFile >> "Config_Spawn" >> _x >> "Marker");

    hint format["%1, %2, %3", _x, _spawnName, _spawnMarker];
    _spawnList lbAdd (_spawnName); // <----- Not Working!!!
    _spawnList lbSetData [(lbSize _spawnList)-1, _spawnMarker];
} forEach _allSpawnPoints;

_spawnList lbSetCurSel 0;
