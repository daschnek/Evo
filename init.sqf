// I might need these for later?
enemymen = ["CUP_O_RU_Soldier","CUP_O_RU_Medic","CUP_O_RU_Soldier_TL","CUP_O_RU_Soldier_SL","CUP_O_RU_Soldier_GL","CUP_O_RU_Soldier_AT","CUP_O_RU_Sniper","CUP_O_RU_Soldier_GL","CUP_O_RU_Soldier_AR","CUP_O_RU_Soldier_AT"];
enemyarmor = ["CUP_O_BMP1_TKA","CUP_O_T55_TK","CUP_O_BMP2_TKA","CUP_O_ZSU23_TK","CUP_O_BTR60_TK","CUP_O_BRDM2_ATGM_TKA","CUP_O_T72_TKA","CUP_O_M113_TKA", "CUP_O_T34_TKA","CUP_O_BMP2_ZU_TKA"];
vehcrew = ["CUP_O_TK_Crew"];

//Set the mission time
if (time < 2) then {
    setDate [2016, 1, 30, (paramsArray select 0), 1];
};

//execVM chain for support menu
_penis = execVM "supports\menufix.sqf"; 

//Creating the main base
_makebase = execVM "base\makebase.sqf";

_town1 = execVM "towns\town1.sqf";

