params["_Object"];

if (isnil "pad") then {pad=""};
removeAllActions _Object;
_Object addAction ["Select Item",{[_this select 3,"Items","selection"] call TG_fnc_menu},_Object];
_Object addAction ["Select Air Frame",{[_this select 3,"Aircraft","selection"] call TG_fnc_menu},_Object];
_Object addAction ["Select Ground Vic",{[_this select 3,"Ground","selection"] call TG_fnc_menu},_Object];
_Object addAction["-------------------",{}];
{
	
	if (_x isEqualTo pad) then {
		_Object addAction["<t color='#008000'>"+(pads_display select _forEachIndex),{
			pad=_this select 3
		},_x,1.5,true,false];
	}
	else {
		_Object addAction[pads_display select _forEachIndex,{
			pad=_this select 3 select 0;[_this select 3 select 1] call TG_fnc_main;
		},[_x,_Object],1.5,true,false];
	};
	
}forEach pads;
_Object addAction["-------------------",{}];
if(platoon isEqualTo "") then{
	_Object addAction["Select Platoon",{[_this select 3,"Platoons","platoon"] call TG_fnc_menu},_Object];
} else{
	_Object addAction["<t color = '#3366FF'>"+([json,"Platoons."+platoon] call MF_Json_Get),{[_this select 3,"Platoons","platoon"] call TG_fnc_menu},_Object];
};


_Object addAction["<t color='#008000'>Spawn",{call TG_fnc_spawn}];
_Object addAction["<t color='#d4af37'>Clear Pad",{[_this select 3] call TG_fnc_clearInit},_Object,1.5,true,false];
