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


//Error that thrown on open of Dialog!!
//File f:\armaprojekt.malden\dialogs\Spawn_Dialog.hpp, line 30: '/SpawnDialog/ControlsBackground/ListboxSpawnSelection.onLBListSelChanged': Missing ';' prior '}'

waitUntil {!(isNull (findDisplay 46))};

[] spawn {
    sleep 1;
    if (isNull (findDisplay 60001) && !(spawn_finish)) then {
        [] call lts_dialog_fnc_callSpawn;
    };
};

createDialog "SpawnDialog";
waitUntil {!(isNull (findDisplay 60001))};
[] call lts_dialog_fnc_getSpawnPoints;
