/*
 * Author: Johannes "Letus" Bindriem
 * Can call for start the Processing Process
 *
 * Arguments:
 * 0: Config Name of Process [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["Config"] call lts_fnc_process
 *
 */

_finish = {
    _args        = param [0];
    _itemAmount  = _args select 0;
    _from        = _args select 1;
    _to          = _args select 2;
    _elapsedTime = param [1];
    _totalTime   = param [2];
    _errorCode   = param [3];

    player removeItems _from;
    [_to, _itemAmount] call lts_fnc_addItem;
};

_abort = {
    _args        = param [0];
    _itemAmount  = _args select 0;
    _from        = _args select 1;
    _to          = _args select 2;
    _elapsedTime = param [1];
    _totalTime   = param [2];
    _errorCode   = param [3];
    ["Du hast die Verarbeitung abgebrochen!"] call lts_fnc_hint;

    //Get the Amount of Processed Items
    _newAmount = _elapsedTime / _itemAmount;
    _newAmount = floor _newAmount;

    //Remove the Processed Items
    for "_i" from 0 to _newAmount do {
        player removeItem _from
    };
    //Add new Items
    [_to, _newAmount] call lts_fnc_addItem;
};

_class = param [0, ""];

_var  = getText   (missionConfigFile >> "Config_Process" >> _class >> "Var");
_text = getText   (missionConfigFile >> "Config_Process" >> _class >> "DisplayName");
_from = getText   (missionConfigFile >> "Config_Process" >> _class >> "From");
_to   = getText   (missionConfigFile >> "Config_Process" >> _class >> "To");
_time = getNumber (missionConfigFile >> "Config_Process" >> _class >> "Time");

//Check if player has Items and how much
//Maybe writh Function for this Action
_items = items player;
_itemAmount = 0;
{
    if (_x isEqualTo _from) then {
        _itemAmount = _itemAmount + 1;
    };
} forEach _items;

//befor perform Action some Checks!
if (_itemAmount isEqualTo 0) exitWith { ["Du hast keine Items die du hier Verarbeiten kannst!"] call lts_fnc_hint };

_timeToProcess = _itemAmount * _time;
_finish = false;

//Add Processbar from ACe "ace_common_fnc_progressBar"
[_timeToProcess, [_itemAmount, _form, _to], {call _abort}, {call _finish}, _text] call ace_common_fnc_progressBar;
