/*
 * Author: Johannes "Letus" Bindriem
 * Function for Gather Resources for Farming
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 *
 *
 */

if (lts_gather_isGather) exitWith {};
lts_gather_isGather = true;

private _return = [] call lts_fnc_isNearField;
if !(_return select 0) exitWith { ["Du bist nicht in der Nähe von einem Feld"] call lts_fnc_hint; lts_gather_isGather = false };
if (lts_core_curSide != "civ") exitWith { ["Du kannst nur als Zivilist Farmen"] call lts_fnc_hint; lts_gather_isGather = false };
_item = _return select 1;

if !(player canAdd _item) exitWith { ["Dein Inventar ist Voll!"] call lts_fnc_hint; lts_gather_isGather = false};


for "_i" from 0 to 8 do {
    player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
    sleep 0.5;
};

_amount = random [10, 12 ,16];
_amount = round _amount;
[ format["Du hast %1, %2 gesammelt", _amount, [_item] call lts_fnc_getDisplayName] ] call lts_fnc_hint;
[_item, _amount] call lts_fnc_addItem;



sleep 0.3;
lts_gather_isGather = false;
