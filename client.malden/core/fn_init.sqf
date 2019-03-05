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

/* ["Checking if Server is white finished setup! Disabled when DBUG enabled"] call lts_fnc_log;
if ((getNumber(missionConfigFile "Config_Master" >> "EnableDBUG")) != 0) then {
    waitUntil { lts_server_setupFinish };
};
["Finish Checking if Server is finish white Setup"] call lts_fnc_log;
 */

//Create all default local global Vars
["Initalizise the default Variables"] call lts_fnc_log;
[] call lts_core_fnc_configuration;
["Finish Initalizise the default Variables"] call lts_fnc_log;

//Start Display Eventhandler for Keyhandler
["Initalizise the Keyhandler"] call lts_fnc_log;
waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler["KeyDown","_this spawn lts_fnc_keyDown"];
["Finish Initalizise the Keyhandlers"] call lts_fnc_log;

//init all needed Eventhandlers on Players
["Initalizise of the Eventhandlers"] call lts_fnc_log;
[] call lts_core_fnc_setupEVH;
["Finish Initalizise of the Eventhandlers"] call lts_fnc_log;

//Start an Infinity Loop.
["Initalizise of the Master Loop"] call lts_fnc_log;
[] spawn lts_core_fnc_loop;
["Finish Initalizise of the Master Loop"] call lts_fnc_log;

//Create Ace Interactions on Player.
["Initalizise of Player Interactions"] call lts_fnc_log;
[] call lts_core_fnc_playerInteraction;
["Finish Initalizise of Player Interactions"] call lts_fnc_log;

//Send Request to Server to Load player Data from DB and set these Values on Player.
["Load Player Prestige Data"] call lts_fnc_log;
[] call lts_interface_fnc_requestPlayerData;
[] call lts_interface_fnc_requestCopData; //load Cop Data at Join so the Player has an ServiceNumber also when he is an Civ
[] call lts_interface_fnc_requestMedData; //load Med Data at Join so the Player has an ServiceNumber also when he is an Civ
["Finish Loading Player Prestige Data"] call lts_fnc_log;

["Initalisation of Farming Scripts and setup Actions for Farming"] call lts_fnc_log;
[] call lts_fnc_initGather;
["Finish Initalisation of Farming Scripts and setup Actions for Farming"] call lts_fnc_log;

["Initalisation of Player Hud"] call lts_fnc_log;
[] call lts_dialog_fnc_callPlayerHud;
["Finish Initalisation of Player Hud"] call lts_fnc_log;

0 cutText ["","BLACK IN"];

["--------------------------------------------"] call lts_fnc_log;
["----- End of Initalisation in init.sqf call player Spawn -----"] call lts_fnc_log;
["--------------------------------------------"] call lts_fnc_log;

//Calls Spawn of Player after the Init end!
["Start Spawn of Player"] call lts_fnc_log;
[] call lts_dialog_fnc_callSpawn;
