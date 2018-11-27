//Set RespawnMarker need an existing marker named "respawn" on the Map
_respawnPos = getMarkerPos "respawn";
"respawn" setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];

//Call Init of gather Script to create the Farming Fields
[] call lts_fnc_initGather;
