params["_Object","_pads"];
[] call compile preprocessFile "json.sqf";
_rawJson = loadFile "functions\console\Vics.json";
json = _rawJson call MF_Json_Parse;
[_Object,_pads] call TG_fnc_main;