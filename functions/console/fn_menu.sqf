params["_Object","_type","_var"];
removeAllActions _Object;
// test=_var;
_test =+ [json,_type] call MF_Json_Get;
_test deleteAt 0;
_test = _test select 0;
{
	
	_p = _x select 1;
	_i = typeName _p;
	if(_i isEqualTo "ARRAY") then {
		// test =+_x;
		_Object addAction["<t color='#d4af37'>"+ (_x select 0),{[_this select 3 select 1,_this select 3 select 0 select 1,_this select 3 select 2] call TG_fnc_subMenu},[_x,_Object,_var]]



	} else {

		_Object addAction[_x select 1,{missionNamespace setVariable [_this select 3 select 2,_this select 3 select 0 select 0];[_this select 3 select 1] call TG_fnc_main},[_x,_Object,_var]]

	};

}forEach _test;
_Object addAction["-------------------",{}];
_Object addAction ["Return",{[_this select 3] call TG_fnc_main},_Object]