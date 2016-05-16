_aipos = [getMarkerPos "mainbase", 1, 25, 5, 0, 100, 0] call BIS_fnc_findSafePos;

_recruitAI = "CUP_B_FR_Soldier_Assault_GL" createUnit [_aipos, group player];