params["_Object"];
removeAllActions _Object;
_Object addAction["<t color='#008000'>Confirm",{call TG_fnc_clear;[_this select 3] call TG_fnc_main},_Object];
_Object addAction["<t color='#ff0000'>Cancel",{[_this select 3] call TG_fnc_main},_Object]