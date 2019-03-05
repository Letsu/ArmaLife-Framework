/*
 * Author: Johannes "letus" Bindriem
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
_target = param [0];
_cop = param [1];
_amount = param [2];
_payed  = param [3];

if !(_payed) exitWith { [format["%1 konnte dein Ticket in der höhe von %2€ nicht zahlen oder hat es verweigert!", name _target, _amount] ] call lts_fnc_hint };

[ format ["%1 hat dein Ticket in höhe von %2€ bezahlt!", name _target, _amount] ] call lts_fnc_hint;

/* Give Money to Cop! */
/*  */
/*  */


/* Maybe Remove from Wanted List */
/*  */
/*  */
