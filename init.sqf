private["_respawnPos"];

_respawnPos = getMarkerPos "respawn_west";
respawn_west setMarkerPos [_respawnPos select 0, _respawnPos select 1, 90];
