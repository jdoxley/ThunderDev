params["_Object"];
removeAllActions _Object;

_Object addAction["LAAT MK.3",{selection="laat_mk3";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["LAAT C",{selection="RD501_LAAT_cargo";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["ARC-170",{selection="RD501_Arc170";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["LAAT MK.3 Blue Krayt",{selection="laat_mk3_blueKrayt";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["LAAT MK.3 Red Krayt",{selection="laat_mk3_redKrayt";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["LAAT MK.3 Ranger Enforcer",{selection="laat_mk3_rangerEnforcer";[_this select 3 call TG_fnc_init]},_Object];
_Object addAction["LAAT MK.3 MedEvac",{selection="laat_mk3_redMedic";[_this select 3 call TG_fnc_init]},_Object];

_Object addAction["-------------------",{}];
_Object addAction ["Return",{[_this select 3] call TG_fnc_init},_Object]