_spawnpos1 = [currentobjective, 1, 200, 1, 0, 100, 0] call BIS_fnc_findSafePos;


_team1 = [_spawnpos1, EAST, (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_ATTeam")] call BIS_fnc_spawnGroup;


[_team1, currentobjective, 50] call BIS_fnc_taskPatrol;
