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
diag_log "Complett Initalizise the default Variables";


0 cutText ["","BLACK IN"];
["--------------------------------------------"] call lts_fnc_log;
["----- End of Initalisation in init.sqf -----"] call lts_fnc_log;
["--------------------------------------------"] call lts_fnc_log;
