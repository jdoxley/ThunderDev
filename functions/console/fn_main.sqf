params["_Object"];

if (isnil "pad") then {pad=""};
removeAllActions _Object;
_Object addAction ["Select Item",{[_this select 3,"Items","selection"] call TG_fnc_menu},_Object];
_Object addAction ["Select Air Frame",{[_this select 3,"Aircraft","selection"] call TG_fnc_menu},_Object];
_Object addAction ["Select Ground Vic",{[_this select 3,"Ground","selection"] call TG_fnc_menu},_Object];
_Object addAction["-------------------",{}];
{
	
	if (_x isEqualTo pad) then {_Object addAction["<t color='#008000'>"+pads_display select _forEachIndex,{pad=_this select 3},_x,1.5,true,false];} else {_Object addAction[pads_display select _forEachIndex,{pad=_this select 3 select 0;[_this select 3 select 1] call TG_fnc_main },[_x,_Object],1.5,true,false];};
	
}forEach pads;
_Object addAction["-------------------",{}];
_Object addAction["Select Platoon",{[_this select 3,"Platoons","platoon"] call TG_fnc_menu},_Object];
_Object addAction["<t color='#008000'>Spawn",{_vic = createVehicle [selection,getMarkerPos [pad,true]];_vic setDir markerDir pad;_y =pads find pad;_u = pads_display select _y;_o = getText (configFile >> "CfgVehicles" >> typeOf _vic >> "displayName") ;["Spawned "+_o+" on "+_u] call ACE_common_fnc_displayText}];
_Object addAction["<t color='#d4af37'>Clear Pad",{[_this select 3] call TG_fnc_clearInit},_Object,1.5,true,false];
