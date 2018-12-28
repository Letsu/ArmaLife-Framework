/*Head*/

private _data  = param [0];
//Error handling
private _sn    = parseNumber(_data select 0);
private _pid   = _data  select 1;
private _level = parseNumber(_data select 2);


//set Variables on the Player(Maybe put to an own setCopCoreData File?)
lts_cop_level = _level;
player setVariable ["serviceNumber", _sn, true];
