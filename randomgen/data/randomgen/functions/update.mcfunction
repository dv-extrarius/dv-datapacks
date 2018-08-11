scoreboard players operation seed1 randgen *= SeedMultiplier Constant
scoreboard players operation seed1 randgen += StreamAddend1 Constant
scoreboard players operation rand1 randgen = seed1 randgen
scoreboard players operation rand1 randgen /= RandDivisor Constant
scoreboard players operation rand1 randgen += RandDivisor Constant
scoreboard players operation rand1 randgen %= RandDivisor Constant

scoreboard players operation seed2 randgen *= SeedMultiplier Constant
scoreboard players operation seed2 randgen += StreamAddend2 Constant
scoreboard players operation rand2 randgen = seed2 randgen
scoreboard players operation rand2 randgen /= RandDivisor Constant
scoreboard players operation rand2 randgen += RandDivisor Constant
scoreboard players operation rand2 randgen %= RandDivisor Constant

scoreboard players operation seed3 randgen *= SeedMultiplier Constant
scoreboard players operation seed3 randgen += StreamAddend3 Constant
scoreboard players operation rand3 randgen = seed3 randgen
scoreboard players operation rand3 randgen /= RandDivisor Constant
scoreboard players operation rand3 randgen += RandDivisor Constant
scoreboard players operation rand3 randgen %= RandDivisor Constant

scoreboard players operation seed4 randgen *= SeedMultiplier Constant
scoreboard players operation seed4 randgen += StreamAddend4 Constant
scoreboard players operation rand4 randgen = seed4 randgen
scoreboard players operation rand4 randgen /= RandDivisor Constant
scoreboard players operation rand4 randgen += RandDivisor Constant
scoreboard players operation rand4 randgen %= RandDivisor Constant

scoreboard players operation seed5 randgen *= SeedMultiplier Constant
scoreboard players operation seed5 randgen += StreamAddend5 Constant
scoreboard players operation rand5 randgen = seed5 randgen
scoreboard players operation rand5 randgen /= RandDivisor Constant
scoreboard players operation rand5 randgen += RandDivisor Constant
scoreboard players operation rand5 randgen %= RandDivisor Constant

scoreboard players add timer randgen 1
execute unless score timer randgen matches 0..19 run scoreboard players set timer randgen 0
execute if score timer randgen matches 0 as @r store result score temp randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score timer randgen matches 0 run scoreboard players operation seed1 randgen += temp randgen
execute if score timer randgen matches 0 as @r store result score temp randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score timer randgen matches 0 run scoreboard players operation seed2 randgen += temp randgen
execute if score timer randgen matches 0 as @r store result score temp randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score timer randgen matches 0 run scoreboard players operation seed3 randgen += temp randgen
execute if score timer randgen matches 0 as @r store result score temp randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score timer randgen matches 0 run scoreboard players operation seed4 randgen += temp randgen
execute if score timer randgen matches 0 as @r store result score temp randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute if score timer randgen matches 0 run scoreboard players operation seed5 randgen += temp randgen
