_notify3 = [West, "HQ"] sideChat "Town 3 was taken!";

//deleting old town marker, making new town marker
_clean = deleteMarkerLocal "Town3";

_objectivemark3 = createMarkerLocal ["Town4", getMarkerPos "ao4"];

"Town4" setMarkerColorLocal "ColorBlack";
"Town4" setMarkerShapeLocal "ELLIPSE";
"Town4" setMarkerSizeLocal [400, 400];

currentobjective = getMarkerPos "ao4";

//Second town units

if (isServer) then {
_handle = execvm "createpatrol.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createat.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createpatrol.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createat.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
waituntil {scriptdone _handle};
_handle = execvm "randomveh.sqf";
waituntil {scriptdone _handle};
_handle = execvm "randomveh.sqf";
waituntil {scriptdone _handle};
_handle = execvm "randomveh.sqf";
waituntil {scriptdone _handle};
_handle = execvm "randomveh.sqf";
waituntil {scriptdone _handle};
_handle = execvm "randomveh.sqf";
waituntil {scriptdone _handle};
_handle = execvm "randomveh.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
waituntil {scriptdone _handle};
_handle = execvm "createsentry.sqf";
};

sleep 5;
//Set the town switch trigger

_town4trig = createTrigger ["EmptyDetector", getMarkerPos "ao4", true];
_town4trig setTriggerArea [500, 500, 45, false];
_town4trig setTriggerActivation ["EAST", "NOT PRESENT", false];
_town4trig setTriggerStatements ["this", "execVM 'towns\town5.sqf'", "thisTrigger"];


