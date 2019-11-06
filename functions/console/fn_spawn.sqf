_vic = createVehicle [selection,getMarkerPos [pad,true]];
_vic setDir markerDir pad;
_u = pads_display select (pads find pad);
_o = getText (configFile >> "CfgVehicles" >> typeOf _vic >> "displayName");
["Spawned "+_o+" on "+_u] call ACE_common_fnc_displayText;
if(!(platoon isEqualTo "") && (selection find "laat_501st")>=0) then {
	_p="";
	_i = _o splitString "'";
	_y = _i select 1;
	_t = _y splitString "-";
	if((count _t) >1) then{
		switch(toLower (_t select 1)) do{
			case "c":{_p="c";};
			case "x":{_p="x";};
			case "p":{_p="p";};
			case "s":{_p="s";};
		};
	}
	else{
		_p="";
	};
	_test = 'RD501_Laat\textures\laat\Laat501stcx'+_p+'\Laat501stBodyCX'+_p+platoon;
	_vic setObjectTextureGlobal [0,_test];
};
