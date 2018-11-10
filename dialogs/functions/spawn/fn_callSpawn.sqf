/*
 * Author: Johannes "letus" Bindriem
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



[] spawn {
    sleep 3;
    if (isNull (findDisplay 60001) && !(spawn_finish)) then {
        [] call lts_dialog_fnc_callSpawn;
    };
};

waitUntil {!(isNull (findDisplay 46))};
createDialog "SpawnDialog";
waitUntil {!(isNull (findDisplay 60001))};
[] call lts_dialog_fnc_getSpawnPoints;
