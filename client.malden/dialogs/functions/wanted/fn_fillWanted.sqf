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

_DISPLAY         = findDisplay 40001;
/* List Boxen */
_LBPLAYERS       = _DISPLAY displayCtrl 1003;
_LBWANTED        = _DISPLAY displayCtrl 1009;
_LBINFO          = _DISPLAY displayCtrl 1013;
/* text */
_OVERVIEW        = _DISPLAY displayCtrl 1018;
_TEXTINFO        = _DISPLAY displayCtrl 1014;
_TEXTWANTED      = _DISPLAY displayCtrl 1008;


//ADD Players to Player List
{
    _LBPLAYERS lbAdd (name _x);
    lts_dialog_wanted_lbPlayerList pushBackUnique _x;
} forEach allPlayers; //remove PLayers that are Wanted

_LBPLAYERS lbSetCurSel 0;


//Add Text
/* _ovText = "
Name:<br/> <br/>
Status:<br/> <br/>
Begangene Straftaten:<br/> <br/>
Gesammt Strafgeld:<br/> <br/>
";
_ovText = parseText _ovText;
_OVERVIEW ctrlSetStructuredText _ovText; */






/*
//Text Info
_TEXT03 = _DISPLAY displayCtrl 1014;
//Text Zusammenfassung
_TEXT02 = _DISPLAY displayCtrl 1018;
//Text Wanted
_TEXT01 = _DISPLAY displayCtrl 1008;

_parseText01 = "
Strafftat: Eine Straftat<br/><br/>
Begangen: 67.7.1999<br/><br/>
Straffgeld: 190€<br/><br/>
";

_parseText011 = parseText _parseText01;
_TEXT01 ctrlSetStructuredText _parseText011;


_parseText02 = "
Name: Letus Lemurus <br/><br/>
Status: Gesucht <br/><br/>
Gesammt Strafgeld: 1522552€ <br/><br/>
Begangene Straftaten: 197 <br/><br/>
";

_parseText022 = parseText _parseText02;
_TEXT02 ctrlSetStructuredText _parseText022;

_parseText03 = "
Vorname: Letus<br/><br/>
Nachname: Lemurus<br/><br/>
Größe: 187cm<br/><br/>
Gewicht: 75Kg<br/><br/>
Einbürgerung: 27.08.1706<br/><br/>
Noch mehr Infos<br/><br/>
";

_parseText033 = parseText _parseText03;
_TEXT03 ctrlSetStructuredText _parseText033; */
