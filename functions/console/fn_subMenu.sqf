params["_Object","_list"];
removeAllActions _Object;
_list deleteAt 0;
_list = _list select 0;
laats = _list;
{_Object addAction[_x select 1,{selection=_this select 3 select 0 select 0;[_this select 3 select 1] call TG_fnc_main},[_x,_Object]]}forEach _list;
_Object addAction["-------------------",{}];
_Object addAction ["Return",{[_this select 3] call TG_fnc_main},_Object]