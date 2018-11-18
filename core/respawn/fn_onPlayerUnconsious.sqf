private [];
/*
 * Author: [Name of Author(s)]
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
disableSerialization;

_unit = param[0];
_state = param[1];

if _state then {
	(findDisplay 49) closeDisplay 0;
    _display = uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull];

    (uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull]) displayAddEventHandler ["KeyDown","if (!((_this select 1) isEqualTo 28)) then { true } "]; //Disaple the ESC Key in the Dialog that the can´t close the Dialog!
    _text1 = (uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull]) ctrlCreate ["RscStructuredText",1930];
	_text1 ctrlSetPosition  [-0.000156274 * safezoneW + safezoneX,0.423 * safezoneH + safezoneY,1.02094 * safezoneW,0.099 * safezoneH];
	_text1 ctrlCommit 0;
	_text1 ctrlSetBackgroundColor [0, 0, 0, 0.9];
	_text1 ctrlSetStructuredText parseText format["<t size='4' color='#FF0000' align = 'center'>Du bist ohnmächtig!</t>"];

	_reqNoMedic = (uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull]) ctrlCreate ["RscButtonMenu",1931];
	_reqNoMedic ctrlSetPosition [0.5 * safezoneW + safezoneX,0.533 * safezoneH + safezoneY,0.195937 * safezoneW,0.077 * safezoneH];
	_reqNoMedic ctrlCommit 0;
	_reqNoMedic ctrlSetBackgroundColor [0, 0, 0, 0.7];
	_reqNoMedic ctrlSetText "Kein Medic rufen";
	_reqNoMedic ctrlAddEventHandler ["ButtonClick", "ctrlShow [1931, false]; ctrlEnable [1932, false]"];

	_reqMedic = (uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull]) ctrlCreate ["RscButtonMenu",1932];
	_reqMedic ctrlSetPosition [0.304062 * safezoneW + safezoneX,0.533 * safezoneH + safezoneY,0.190781 * safezoneW,0.077 * safezoneH];
	_reqMedic ctrlCommit 0;
	_reqMedic ctrlSetBackgroundColor [0, 0, 0, 0.7];
	_reqMedic ctrlSetText "Medic Rufen";
	_reqMedic ctrlAddEventHandler ["ButtonClick", "ctrlEnable [1931, false]; ctrlEnable [1932, false]"]; //<--- Nedd Function to create an Emergeny by the 911
} else {
	closeDialog 0;
};
