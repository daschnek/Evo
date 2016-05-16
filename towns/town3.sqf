_notify2 = [West, "HQ"] sideChat "Town 2 was taken!";

//deleting old town marker, making new town marker
_clean = deleteMarkerLocal "Town2";

_objectivemark3 = createMarkerLocal ["Town3", getMarkerPos "ao3"];

"Town3" setMarkerColorLocal "ColorBlack";
"Town3" setMarkerShapeLocal "ELLIPSE";
"Town3" setMarkerSizeLocal [400, 400];

currentobjective = getMarkerPos "ao3";

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

_town3trig = createTrigger ["EmptyDetector", getMarkerPos "ao3", true];
_town3trig setTriggerArea [500, 500, 45, false];
_town3trig setTriggerActivation ["EAST", "NOT PRESENT", false];
_town3trig setTriggerStatements ["this", "execVM 'towns\town4.sqf'", "thisTrigger"];
