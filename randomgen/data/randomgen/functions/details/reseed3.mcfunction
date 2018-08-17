summon minecraft:area_effect_cloud 0 -100 0 {Tags:["reseed3"], Radius: 0, Duration: 1}
execute as @e[tag=reseed3] store result score temp rndgenTimer run data get entity @s UUIDLeast 1
scoreboard players operation seed3A rndgenTimer += temp rndgenTimer
execute as @e[tag=reseed3] store result score temp rndgenTimer run data get entity @s UUIDMost 1
scoreboard players operation seed3B rndgenTimer += temp rndgenTimer
kill @e[tag=reseed3]
