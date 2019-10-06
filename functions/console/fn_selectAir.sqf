params["_Object"];
removeAllActions _Object;
_vics = [["laat_mk3","<t color='#00FF00'>LAAT MK3</t>"],
["laat_mk3_redMedic","<t color='#00FF00'>LAAT MK3 Rescue</t>"],
["laat_mk3_redKrayt","<t color='#00FF00'>LAAT MK3 Red Krayt</t>"],
["laat_mk3_blueKrayt","<t color='#00FF00'>LAAT MK3 Blue Krayt</t>"],
["laat_mk3_rangerEnforcer","<t color='#00FF00'>LAAT MK3 Ranger Enforcer</t>"],
["RD501_LAAT_MK3_Doors","<t color='#00FF00'>LAAT MK3 Doors</t>"],
["RD501_Arc170","<t color='#00FF00'>ARC-170</t>"],
["RD501_LAAT_MK3_Doors_ARC","<t color='#00FF00'>LAAT MK3 Doors ARC</t>"],
["RD501_LAAT_MK3_Doors_SpecOps","<t color='#00FF00'>LAAT MK3 Doors SpecOps</t>"],
["laat_mk3_blackblueKrayt","<t color='#00FF00'>LAAT MK3 Stealth Blue Krayt</t>"],
["laat_mk3_blackredKrayt","<t color='#00FF00'>LAAT MK3 Stealth Red Krayt</t>"],
["laat_mk3_blackwhiteKrayt","<t color='#00FF00'>LAAT MK3 Stealth White Krayt</t>"],
["swop_delta7a_RD501","<t color='#00FF00'>Interceptor Heavy</t>"],
["vwing_heavy","<t color='#00FF00'>V-Wing</t>"],
["super_ywing","<t color='#00FF00'>Y-Wing</t>"]
];
{_Object addAction[_x select 1,{selection=_this select 3 select 0 select 0;[_this select 3 select 1] call TG_fnc_init},[_x,_Object]]}forEach _vics;
_Object addAction["-------------------",{}];
_Object addAction ["Return",{[_this select 3] call TG_fnc_init},_Object]