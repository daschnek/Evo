//Town marker
_objectivemark = createMarkerLocal ["Town", getMarkerPos "ao1"];
"Town" setMarkerColorLocal "ColorBlack";
"Town" setMarkerShapeLocal "ELLIPSE";
"Town" setMarkerSizeLocal [400, 400];

currentobjective = getMarkerPos "ao1";

//Spawn for the first zone
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

_town1trig = createTrigger ["EmptyDetector", getMarkerPos "ao1", true];
_town1trig setTriggerArea [500, 500, 45, false];
_town1trig setTriggerActivation ["EAST", "NOT PRESENT", false];
_town1trig setTriggerStatements ["this", "execVM 'towns\town2.sqf'", "thisTrigger"];
