#First Generator Pair
function randomgen:details/update1

#Second Generator Pair
scoreboard players add timer2 rndgenTimer 1
execute unless score timer2 rndgenTimer matches 0..1 run scoreboard players set timer2 rndgenTimer 0
execute if score timer2 rndgenTimer matches 0 run function randomgen:details/update2

#Third Generator Pair
scoreboard players add timer3 rndgenTimer 1
execute unless score timer3 rndgenTimer matches 0..3 run scoreboard players set timer3 rndgenTimer 0
execute if score timer3 rndgenTimer matches 0 run function randomgen:details/update3

#Combine Generators
scoreboard players operation random rndgenOutput = rand1A rndgenVariable
scoreboard players operation random rndgenOutput += rand2A rndgenVariable
scoreboard players operation random rndgenOutput += rand3A rndgenVariable
scoreboard players operation random rndgenOutput *= RandDivisor rndgenConstant
scoreboard players operation random rndgenOutput += rand1B rndgenVariable
scoreboard players operation random rndgenOutput += rand2B rndgenVariable
scoreboard players operation random rndgenOutput += rand3B rndgenVariable

#Reseed every 10 seconds / 200 calls
scoreboard players add seedTimer rndgenTimer 1
execute unless score seedTimer rndgenTimer matches 0..199 run scoreboard players set seedTimer rndgenTimer 0
execute if score seedTimer rndgenTimer matches 0 run function randomgen:details/reseed