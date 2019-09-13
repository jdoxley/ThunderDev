params["_Object",["_pads",pads,[[]]]];
pads=_pads;
removeAllActions _Object;
_Object addAction ["Select Item",{[_this select 3] call TG_fnc_selectItem},_Object];
_Object addAction ["Select Air Frame",{[_this select 3] call TG_fnc_selectAir},_Object];
_Object addAction ["Select Ground Vic",{[_this select 3] call TG_fnc_selectGround},_Object];
_Object addAction["-------------------",{}];
{
	
	_pad = _x splitString "_";
	_temp = _pad select 0;
	_temp = _temp splitString "";
	_temp2 = _temp select 0;
	_temp set [0,toUpper _temp2];
	_temp = _temp joinString "";
	_pad set [0,_temp];
	_pad = _pad joinString " ";
	_Object addAction[_pad,{pad=_this select 3},_x,1.5,true,false];

}forEach pads;
_Object addAction["-------------------",{}];
_Object addAction["<t color='#008000'>Spawn",{_vic = createVehicle [selection,getMarkerPos [pad,true]];_vic setDir markerDir pad; [west,"AirBase"] commandChat "Spawned "+selection+" on "+pad}]
