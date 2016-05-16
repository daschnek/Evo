_atpos = [getMarkerPos "mainbase", 1, 25, 5, 0, 100, 0] call BIS_fnc_findSafePos;

_recruitAT = "CUP_B_USMC_Soldier_HAT" createUnit [_atpos, group player];