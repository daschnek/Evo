if (isServer) then {
base = "Land_Cargo_HQ_V1_F" createVehicle getMarkerPos "mainbase";
publicVariable "base";
};

_stuff = execVM "base\baseaddactions.sqf";