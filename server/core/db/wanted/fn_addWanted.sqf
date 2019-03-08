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
 private _copUID     = param [0];
 private _copName    = param [1];
 private _targetUID  = param [2];
 private _targetName = param [3];
 private _title    	 = param [4];
 private _note       = param [5];
 private _price      = param [6];


private  _data = format ["0:Wanted:CreateEntry:%1:%2:%3:%4:%5:%6:%7",
     _copUID,
     _copName,
     _targetUID,
     _targetName,
     _title,
     _note,
     _price
     ];

["Im Server ist auch Was!" + str(_data)] call lts_server_fnc_log;


 private _query = call compile ("extDB3" callExtension _data);
