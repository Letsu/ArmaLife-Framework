/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
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
_player = param [0, player];
_robber = param [1, objNull];

 player playMoveNow "Incapacitated";
 disableUserInput true;

 _obj = "Land_ClutterCutter_small_F" createVehicle ASLTOATL(visiblePositionASL player);
 _obj setPosATL ASLTOATL(visiblePositionASL player);

 player attachTo [_obj,[0,0,0]];
 uisleep 15;
 player playMoveNow "AmovPpneMstpSrasWrflDnon";
 disableUserInput false;
 detach player;
 deleteVehicle _obj;
