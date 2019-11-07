_vic = createVehicle [selection,getMarkerPos [pad,true]];
_vic setDir markerDir pad;
_u = pads_display select (pads find pad);
_o = getText (configFile >> "CfgVehicles" >> typeOf _vic >> "displayName");
["Spawned "+_o+" on "+_u] call ACE_common_fnc_displayText;
