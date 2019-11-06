params["_Object","_pads"];
[] call compile preprocessFile "json.sqf";
_rawJson = loadFile "functions\console\Vics.json";
json = _rawJson call MF_Json_Parse;
platoon="";
pads=_pads;
pads_display=+_pads;
{
	_pad = _x splitString "_";
	_temp = _pad select 0;
	_temp = _temp splitString "";
	_temp2 = _temp select 0;
	_temp set [0,toUpper _temp2];
	_temp = _temp joinString "";
	_pad set [0,_temp];
	_pad = _pad joinString " ";
	pads_display set [_forEachIndex,_pad];
}forEach pads;

[_Object] call TG_fnc_main;