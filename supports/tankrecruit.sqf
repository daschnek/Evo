_tankpos = [getMarkerPos "mainbase", 1, 30, 10, 0, 100, 0] call BIS_fnc_findSafePos;

_recruittank = "CUP_B_M1A2_TUSK_MG_USMC" createVehicle _tankpos; 