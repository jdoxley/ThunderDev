params["_Object"];
removeAllActions _Object;
_Object addAction["Warden Tank",{selection="RD501_WardenMob";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["REP H.O.T.",{selection="RD501_Rep_Arty";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["REP R.O.T.",{selection="RD501_Rep_MLRS";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["Republic Fast Infantry Transport",{selection="FAT_MRAP";[_this select 3 call TG_fnc_init]},_Object];

_Object addAction["-------------------",{}];
_Object addAction ["Return",{[_this select 3] call TG_fnc_init},_Object]