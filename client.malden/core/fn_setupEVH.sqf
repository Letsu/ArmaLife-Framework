//player addEventHandler ["", {}];
/*
 * Author: Johannes "Letus" Bindriem
 * Setup the Event Handlers for player and Displays
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_core_fnc_setupEVH;
 *
 */


//Create Display Handers on Main Display 46
waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler["KeyDown","_this call lts_fnc_keyDown"];

//Eventhandlers local on the Player

//Ace Eventhanders called whit CBA.
["ace_unconscious", {
	params ["_unit", "_state"];
	[{
        [lts_fnc_onPlayerUnconsious, _this] call CBA_fnc_execNextFrame;
    },[_unit,_state], 1] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;
