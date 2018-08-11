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
scoreboard players operation random rndgenVariable = rand1A rndgenVariable
scoreboard players operation random rndgenVariable += rand2A rndgenVariable
scoreboard players operation random rndgenVariable += rand3A rndgenVariable
scoreboard players operation random rndgenVariable *= RandDivisor rndgenConstant
scoreboard players operation random rndgenVariable += rand1B rndgenVariable
scoreboard players operation random rndgenVariable += rand2B rndgenVariable
scoreboard players operation random rndgenVariable += rand3B rndgenVariable

#Reseed every 10 seconds / 200 calls
scoreboard players add seedTimer rndgenTimer 1
execute unless score seedTimer rndgenTimer matches 0..199 run scoreboard players set seedTimer rndgenTimer 0
execute if score seedTimer rndgenTimer matches 0 as @r store result score temp rndgenTimer run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score seedTimer rndgenTimer matches 0 run scoreboard players operation seed1A rndgenTimer += temp rndgenTimer
execute if score seedTimer rndgenTimer matches 0 as @r store result score temp rndgenTimer run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score seedTimer rndgenTimer matches 0 run scoreboard players operation seed1B rndgenTimer += temp rndgenTimer
execute if score seedTimer rndgenTimer matches 0 as @r store result score temp rndgenTimer run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score seedTimer rndgenTimer matches 0 run scoreboard players operation seed2A rndgenTimer += temp rndgenTimer
execute if score seedTimer rndgenTimer matches 0 as @r store result score temp rndgenTimer run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score seedTimer rndgenTimer matches 0 run scoreboard players operation seed2B rndgenTimer += temp rndgenTimer
execute if score seedTimer rndgenTimer matches 0 as @r store result score temp rndgenTimer run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score seedTimer rndgenTimer matches 0 run scoreboard players operation seed3A rndgenTimer += temp rndgenTimer
execute if score seedTimer rndgenTimer matches 0 as @r store result score temp rndgenTimer run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score seedTimer rndgenTimer matches 0 run scoreboard players operation seed3B rndgenTimer += temp rndgenTimer
