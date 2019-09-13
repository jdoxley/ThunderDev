pad="pad_1";
item="";
crate=false;
aircraft=false;


this addAction ["Select Item",{crate=true}];
this addAction ["Select Air Frame",{aircraft=true}];












this addAction ["Spawn Med Crate",{item="RD501_SmallMed"}];
this addAction ["Spawn Ammo Crate",{item="RD501_SmallAmmo"}];
this addAction["-------------------",{}];
this addAction ["Pad 1",{pad="pad_1"}];
this addAction ["Pad 2",{pad="pad_2"}];
this addAction ["Pad 3",{pad="pad_3"}];
this addAction ["Pad 4",{pad="pad_4"}];
this addAction["-------------------",{}];
this addAction["<t color='#008000'>Spawn",{createVehicle [item,getMarkerPos [pad,true]]; [west,"AirBase"] commandChat "Spawned "+item+" on "+pad}]
