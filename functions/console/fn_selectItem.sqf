params["_Object"];
removeAllActions _Object;
_Object addAction ["Med Crate",{selection="RD501_SmallMed";[_this select 3] call TG_fnc_init},_Object,1.5,true,false];
_Object addAction ["Ammo Crate",{selection="RD501_SmallAmmo";[_this select 3] call TG_fnc_init},_Object,1.5,true,false];
_Object addAction["-------------------",{}];
_Object addAction ["Return",{[_this select 3] call TG_fnc_init},_Object,1.5,true,false];