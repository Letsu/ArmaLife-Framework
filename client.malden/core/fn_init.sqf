/*
 * Author: Johannes "Letus" Bindriem
 * Init that call all needed Function on Client when he Joins the Server!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_core_fnc_init;

 */
//Start
 ["--------------------------------------------"] call lts_fnc_log;
 ["---- Start of Initalisation in init.sqf ----"] call lts_fnc_log;
 ["--------------------------------------------"] call lts_fnc_log;
0 cutText["Initalisation of Player","BLACK FADED"]; //Add Stringtable
0 cutFadeOut 9999999;

//Configuration
["Initalizise the default Variables"] call lts_fnc_log;
[] call lts_core_fnc_configuration;
["Finish Initalizise the default Variables"] call lts_fnc_log;

["Initalizise the Keyhandler"] call lts_fnc_log;
waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler["KeyDown","_this spawn lts_fnc_keyDown"];
["Finish Initalizise the Keyhandlers"] call lts_fnc_log;

["Initalizise of the Eventhandlers"] call lts_fnc_log;
[] call lts_core_fnc_setupEVH;
["Finish Initalizise of the Eventhandlers"] call lts_fnc_log;

["Initalizise of the Master Loop"] call lts_fnc_log;
[] spawn lts_core_fnc_loop;
["Finish Initalizise of the Master Loop"] call lts_fnc_log;

["Initalizise of Player Interactions"] call lts_fnc_log;
[] spawn lts_core_fnc_playerInteraction;
["Finish Initalizise of Player Interactions"] call lts_fnc_log;

0 cutText ["","BLACK IN"];

["--------------------------------------------"] call lts_fnc_log;
["----- End of Initalisation in init.sqf call player Spawn -----"] call lts_fnc_log;
["--------------------------------------------"] call lts_fnc_log;
[] call lts_dialog_fnc_callSpawn;
