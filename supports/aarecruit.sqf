_aapos = [getMarkerPos "mainbase", 1, 25, 5, 0, 100, 0] call BIS_fnc_findSafePos;

_recruitAA = "CUP_B_USMC_Soldier_AA" createUnit [_aapos, group player];

