//player addEventHandler ["", {}];


waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler["KeyDown","_this spawn lts_fnc_keyDown"];
