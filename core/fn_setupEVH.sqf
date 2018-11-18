//player addEventHandler ["", {}];


waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler["KeyDown","_this call lts_fnc_keyDown"];


//Ace Eventhandlers
["ace_unconscious", {
	params ["_unit", "_state"];
	[{
        [lts_fnc_onPlayerUnconsious, _this] call CBA_fnc_execNextFrame;
    },[_unit,_state], 1] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;
