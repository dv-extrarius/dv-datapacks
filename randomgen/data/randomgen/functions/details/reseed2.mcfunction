summon minecraft:area_effect_cloud{Tags:["reseed2"], Radius: 0, Duration: 1} 0 -100 0
execute as @e[tag=reseed3] store result score temp rndgenTimer run data get entity @s UUIDLeast 1
scoreboard players operation seed2A rndgenTimer += temp rndgenTimer
execute as @e[tag=reseed3] store result score temp rndgenTimer run data get entity @s UUIDMost 1
scoreboard players operation seed2B rndgenTimer += temp rndgenTimer
kill  @e[tag=reseed2]