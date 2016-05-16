//Notify that town1 was taken
_notify1 = [West, "HQ"] sideChat "Town 1 was taken!";

//deleting old town marker, making new town marker
_clean = deleteMarkerLocal "Town";

_objectivemark2 = createMarkerLocal ["Town2", getMarkerPos "ao2"];

"Town2" setMarkerColorLocal "ColorBlack";
"Town2" setMarkerShapeLocal "ELLIPSE";
"Town2" setMarkerSizeLocal [400, 400];

currentobjective = getMarkerPos "ao2";

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

_town2trig = createTrigger ["EmptyDetector", getMarkerPos "ao2", true];
_town2trig setTriggerArea [500, 500, 45, false];
_town2trig setTriggerActivation ["EAST", "NOT PRESENT", false];
_town2trig setTriggerStatements ["this", "execVM 'towns\town3.sqf'", "thisTrigger"];
