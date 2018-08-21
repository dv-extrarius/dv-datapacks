#Multiply & Add Increment
scoreboard players operation d0 rndgenTemp = a0 rndgenSeed
scoreboard players operation d0 rndgenTemp *= c0 rndgenConst
scoreboard players add d0 rndgenTemp 335

scoreboard players operation d1 rndgenTemp = a0 rndgenSeed
scoreboard players operation d1 rndgenTemp *= c1 rndgenConst
scoreboard players operation t rndgenTemp = a1 rndgenSeed
scoreboard players operation t rndgenTemp *= c0 rndgenConst
scoreboard players operation d1 rndgenTemp += t rndgenTemp
scoreboard players add d1 rndgenTemp 6972

scoreboard players operation d2 rndgenTemp = a0 rndgenSeed
scoreboard players operation d2 rndgenTemp *= c2 rndgenConst
scoreboard players operation t rndgenTemp = a1 rndgenSeed
scoreboard players operation t rndgenTemp *= c1 rndgenConst
scoreboard players operation d2 rndgenTemp += t rndgenTemp
scoreboard players operation t rndgenTemp = a2 rndgenSeed
scoreboard players operation t rndgenTemp *= c0 rndgenConst
scoreboard players operation d2 rndgenTemp += t rndgenTemp
scoreboard players add d2 rndgenTemp 8125

scoreboard players operation d3 rndgenTemp = a0 rndgenSeed
scoreboard players operation d3 rndgenTemp *= c3 rndgenConst
scoreboard players operation t rndgenTemp = a1 rndgenSeed
scoreboard players operation t rndgenTemp *= c2 rndgenConst
scoreboard players operation d3 rndgenTemp += t rndgenTemp
scoreboard players operation t rndgenTemp = a2 rndgenSeed
scoreboard players operation t rndgenTemp *= c1 rndgenConst
scoreboard players operation d3 rndgenTemp += t rndgenTemp
scoreboard players operation t rndgenTemp = a3 rndgenSeed
scoreboard players operation t rndgenTemp *= c0 rndgenConst
scoreboard players operation d3 rndgenTemp += t rndgenTemp
scoreboard players add d3 rndgenTemp 2806

scoreboard players operation d4 rndgenTemp = a0 rndgenSeed
scoreboard players operation d4 rndgenTemp *= c4 rndgenConst
scoreboard players operation t rndgenTemp = a1 rndgenSeed
scoreboard players operation t rndgenTemp *= c3 rndgenConst
scoreboard players operation d4 rndgenTemp += t rndgenTemp
scoreboard players operation t rndgenTemp = a2 rndgenSeed
scoreboard players operation t rndgenTemp *= c2 rndgenConst
scoreboard players operation d4 rndgenTemp += t rndgenTemp
scoreboard players operation t rndgenTemp = a3 rndgenSeed
scoreboard players operation t rndgenTemp *= c1 rndgenConst
scoreboard players operation d4 rndgenTemp += t rndgenTemp
scoreboard players operation t rndgenTemp = a4 rndgenSeed
scoreboard players operation t rndgenTemp *= c0 rndgenConst
scoreboard players operation d4 rndgenTemp += t rndgenTemp
scoreboard players add d4 rndgenTemp 640

#Store Seed Back
scoreboard players operation a0 rndgenSeed = d0 rndgenTemp
scoreboard players operation a1 rndgenSeed = d1 rndgenTemp
scoreboard players operation a2 rndgenSeed = d2 rndgenTemp
scoreboard players operation a3 rndgenSeed = d3 rndgenTemp
scoreboard players operation a4 rndgenSeed = d4 rndgenTemp

function randomgen:details/normalize

#Extract Number
scoreboard players operation random rndgenTemp = a4 rndgenSeed
scoreboard players operation random rndgenTemp *= #8192 rndgenConst
scoreboard players operation random rndgenTemp += a3 rndgenSeed
scoreboard players operation random rndgenTemp *= #64 rndgenConst
scoreboard players operation t rndgenTemp = a2 rndgenSeed
scoreboard players operation t rndgenTemp /= #128 rndgenConst
scoreboard players operation random rndgenTemp += t rndgenTemp

#Reseed every 60 seconds / 1200 calls
scoreboard players add seedTimer rndgenTimer 1
execute unless score seedTimer rndgenTimer matches 0..1199 run scoreboard players set seedTimer rndgenTimer 0
execute if score seedTimer rndgenTimer matches 0 run function randomgen:details/reseed
