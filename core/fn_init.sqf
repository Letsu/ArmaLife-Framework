/*
 * Author: Johannes "Letus" Bindriem
 *
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
//Start
 ["--------------------------------------------"] call lts_fnc_log;
 ["---- Start of Initalisation in init.sqf ----"] call lts_fnc_log;
 ["--------------------------------------------"] call lts_fnc_log;
0 cutText["Initalisation of Player","BLACK FADED"]; //Add Stringtable
0 cutFadeOut 9999999;

//Configuration
diag_log "Initalizise the default Variables";
[] call lts_core_fnc_configuration;
diag_log "Finish Initalizise the default Variables";

diag_log "Initalizise the Keyhandler";
waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler["KeyDown","_this spawn lts_fnc_keyDown"];
diag_log "Finish Initalizise the Keyhandlers";

diag_log "Initalizise of the Eventhandlers";
[] call lts_core_fnc_setupEVH;
diag_log "Finish Initalizise of the Eventhandlers";

diag_log "Initalizise of the Master Loop";
[] spawn lts_core_fnc_loop;
diag_log "Finish Initalizise of the Master Loop";


0 cutText ["","BLACK IN"];
["--------------------------------------------"] call lts_fnc_log;
["----- End of Initalisation in init.sqf -----"] call lts_fnc_log;
["--------------------------------------------"] call lts_fnc_log;
