summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder1"], Radius: 0, Duration: 1, Silent:1b, DeathLootTable:"empty"}
execute as @e[tag=rndgenReseeder1] store result score temp rndgenTemp run data get entity @s UUIDMost 1
scoreboard players operation a0 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

execute as @e[tag=rndgenReseeder1] store result score temp rndgenTemp run data get entity @s UUIDLeast 1
scoreboard players operation a1 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

data merge entity @e[tag=rndgenReseeder1,limit=1] {Health:0.0f,DeathTime:19s}
kill @e[tag=rndgenReseeder1,limit=1]
#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder2"], Radius: 0, Duration: 1, Silent:1b, DeathLootTable:"empty"}
execute as @e[tag=rndgenReseeder2] store result score temp rndgenTemp run data get entity @s UUIDMost 1
scoreboard players operation a2 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

execute as @e[tag=rndgenReseeder2] store result score temp rndgenTemp run data get entity @s UUIDLeast 1
scoreboard players operation a3 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

data merge entity @e[tag=rndgenReseeder2,limit=1] {Health:0.0f,DeathTime:19s}
kill @e[tag=rndgenReseeder2,limit=1]
#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder3"], Radius: 0, Duration: 1, Silent:1b, DeathLootTable:"empty"}
execute as @e[tag=rndgenReseeder3] store result score temp rndgenTemp run data get entity @s UUIDMost 1
scoreboard players operation a4 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

execute as @e[tag=rndgenReseeder3] store result score temp rndgenTemp run data get entity @s UUIDLeast 1
scoreboard players operation a0 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

data merge entity @e[tag=rndgenReseeder3,limit=1] {Health:0.0f,DeathTime:19s}
kill @e[tag=rndgenReseeder3,limit=1]