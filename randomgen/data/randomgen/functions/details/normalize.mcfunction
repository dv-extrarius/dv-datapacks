#Normalize Seed
scoreboard players operation t rndgenTemp = a0 rndgenSeed
scoreboard players operation t rndgenTemp /= 8192 rndgenConst
scoreboard players operation a0 rndgenSeed %= 8192 rndgenConst

scoreboard players operation a1 rndgenSeed += t rndgenTemp
scoreboard players operation t rndgenTemp = a1 rndgenSeed
scoreboard players operation t rndgenTemp /= 8192 rndgenConst
scoreboard players operation a1 rndgenSeed %= 8192 rndgenConst

scoreboard players operation a2 rndgenSeed += t rndgenTemp
scoreboard players operation t rndgenTemp = a2 rndgenSeed
scoreboard players operation t rndgenTemp /= 8192 rndgenConst
scoreboard players operation a2 rndgenSeed %= 8192 rndgenConst

scoreboard players operation a3 rndgenSeed += t rndgenTemp
scoreboard players operation t rndgenTemp = a3 rndgenSeed
scoreboard players operation t rndgenTemp /= 8192 rndgenConst
scoreboard players operation a3 rndgenSeed %= 8192 rndgenConst

scoreboard players operation a4 rndgenSeed += t rndgenTemp
scoreboard players operation a4 rndgenSeed %= 4096 rndgenConst
