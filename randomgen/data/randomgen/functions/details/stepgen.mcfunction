#Update Timer
scoreboard players add stepTimer rndgenTimer 1
execute unless score stepTimer rndgenTimer matches 0..3 run scoreboard players set stepTimer rndgenTimer 0

#First Generator Pair
function randomgen:details/update1

#Second Generator Pair
execute if score stepTimer rndgenTimer matches 0 run function randomgen:details/update2
execute if score stepTimer rndgenTimer matches 2 run function randomgen:details/update2

#Third Generator Pair
execute if score stepTimer rndgenTimer matches 0 run function randomgen:details/update3

#Combine Generators
scoreboard players operation random rndgenVariable = rand1A rndgenVariable
scoreboard players operation random rndgenVariable += rand2A rndgenVariable
scoreboard players operation random rndgenVariable += rand3A rndgenVariable
scoreboard players operation random rndgenVariable *= RandLowModulus rndgenConstant
scoreboard players operation random rndgenVariable += rand1B rndgenVariable
scoreboard players operation random rndgenVariable += rand2B rndgenVariable
scoreboard players operation random rndgenVariable += rand3B rndgenVariable

execute if score random rndgenVariable <= ConstNegOne rndgenConstant run scoreboard players operation random rndgenVariable *= ConstNegOne rndgenConstant

#Reseed every 60 seconds / 1200 calls
scoreboard players add seedTimer rndgenTimer 1
execute unless score seedTimer rndgenTimer matches 0..1199 run scoreboard players set seedTimer rndgenTimer 0
execute if score seedTimer rndgenTimer matches 0 run function randomgen:details/reseed1
execute if score seedTimer rndgenTimer matches 400 run function randomgen:details/reseed2
execute if score seedTimer rndgenTimer matches 800 run function randomgen:details/reseed3
