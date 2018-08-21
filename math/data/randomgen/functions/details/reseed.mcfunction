summon minecraft:area_effect_cloud 0 -100 0 {Tags:["reseeder"], Radius: 0, Duration: 1, Silent:1b, DeathLootTable:"empty"}
execute as @e[tag=reseed3] store result score temp rndgenTemp run data get entity @s UUIDLeast 1
scoreboard players operation a0 rndgenSeed += temp rndgenTemp
execute as @e[tag=reseed3] store result score temp rndgenTemp run data get entity @s UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation a1 rndgenSeed += temp rndgenTemp

execute as @e[tag=reseed3] store result score temp rndgenTemp run data get entity @s UUIDMost 1
scoreboard players operation a2 rndgenSeed += temp rndgenTemp
execute as @e[tag=reseed3] store result score temp rndgenTemp run data get entity @s UUIDMost 0.00000000023283064365386962890625
scoreboard players operation a3 rndgenSeed += temp rndgenTemp

function randomgen:details/normalize

data merge entity @e[tag=reseeder,limit=1] {Health:0.0f,DeathTime:19s}
kill @e[tag=reseeder,limit=1]
