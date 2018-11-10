private["_respawnPos"];

_respawnPos = getMarkerPos "respawn";
"respawn" setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];

 [] call lts_fnc_initGather;
