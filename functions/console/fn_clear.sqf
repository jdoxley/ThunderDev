params[];
_arr = nearestObjects[getMarkerPos pad,[],10];
_arr deleteAt 0;
{deleteVehicle _x}forEach _arr;
_y =pads find pad;_u = pads_display select _y;
["Cleaned "+_u] call ACE_common_fnc_displayText;