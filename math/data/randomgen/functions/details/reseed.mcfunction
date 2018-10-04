#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder0"], Radius: 0, Duration: 0, Silent:1b}
execute as @e[tag=rndgenReseeder0] store result score temp rndgenTemp run data get entity @s UUIDMost 0.0000000002328306436538696289
scoreboard players operation a0 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

kill @e[tag=rndgenReseeder0,limit=1]
#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder1"], Radius: 0, Duration: 0, Silent:1b}
execute as @e[tag=rndgenReseeder1] store result score temp rndgenTemp run data get entity @s UUIDMost 0.0000000002328306436538696289
scoreboard players operation a1 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

kill @e[tag=rndgenReseeder1,limit=1]
#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder2"], Radius: 0, Duration: 0, Silent:1b}
execute as @e[tag=rndgenReseeder2] store result score temp rndgenTemp run data get entity @s UUIDMost 0.0000000002328306436538696289
scoreboard players operation a2 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

kill @e[tag=rndgenReseeder2,limit=1]
#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder3"], Radius: 0, Duration: 0, Silent:1b}
execute as @e[tag=rndgenReseeder3] store result score temp rndgenTemp run data get entity @s UUIDMost 0.0000000002328306436538696289
scoreboard players operation a3 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

kill @e[tag=rndgenReseeder3,limit=1]
#####################################################################################################################################
summon minecraft:area_effect_cloud 0 -100 0 {Tags:["rndgenReseeder4"], Radius: 0, Duration: 0, Silent:1b}
execute as @e[tag=rndgenReseeder4] store result score temp rndgenTemp run data get entity @s UUIDMost 0.0000000002328306436538696289
scoreboard players operation a4 rndgenSeed += temp rndgenTemp
function randomgen:details/normalize

kill @e[tag=rndgenReseeder4,limit=1]
#####################################################################################################################################
