_spawnpos1 = [currentobjective, 1, 200, 5, 0, 100, 0] call BIS_fnc_findSafePos;

_randveh = enemyarmor select floor random count enemyarmor;

_team1 = [_spawnpos1, EAST, [_randveh],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

[_team1, currentobjective, 75] call BIS_fnc_taskPatrol;
