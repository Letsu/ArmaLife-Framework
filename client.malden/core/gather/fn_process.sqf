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

_class = param [0, ""];

_var = getText (missionConfigFile >> "Config_Process" >> _class >> "Var");
_text = getText (missionConfigFile >> "Config_Process" >> _clsss >> "DisplayName");
_from = getText (missionConfigFile >> "Config_Process" >> _class >> "From");
_to = getText (missionConfigFile >> "Config_Process" >> _class >> "To");

//Check if player has Items and how much
//Maybe writh Function for this Action
_items = items player; //IMPORTENT: check if Funtion give the Right output
_itemAmount = 0;
{
    if (_x isEqualTo _from) then {
        _itemAmount = _itemAmount + 1;
    };
} forEach _items;



//Add Processbar from ACe "ace_common_fnc_progressBar"

//Remove old Items and add the new one
//player removeItem item
