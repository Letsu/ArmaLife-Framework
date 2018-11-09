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

//Configuration
diag_log "Initalizise the default Variables";
[] call lts_core_fnc_configuration;
diag_log "Complett Initalizise the default Variables";

["--------------------------------------------"] call lts_fnc_log;
["----- End of Initalisation in init.sqf -----"] call lts_fnc_log;
["--------------------------------------------"] call lts_fnc_log;
