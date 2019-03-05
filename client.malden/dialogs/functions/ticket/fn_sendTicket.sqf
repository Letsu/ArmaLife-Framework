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

 /* private _DISPLAY = findDisplay IDD? */
 /* _TEXTTICKET = _DISPLAY displayCtrl IDC? */


 /* Get Value of TextBox and pass to lts_cop_fnc_giveTicket */
 private _amount = ctrlText _TEXTTICKET;

 _amount = parseNumber _amount;

 if (_amount <= 0) exitWith { ["Du hast keine Zahl oder 0 eingegeben! Bitte gebe eine gültige zahl ein!"] call lts_fnc_hint };
