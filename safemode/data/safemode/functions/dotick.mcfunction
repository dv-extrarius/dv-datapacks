execute as @a run execute unless score @s safemodeFood matches 20.. run effect give @s minecraft:saturation 1 100 true
execute as @a run execute unless score @s safemodeHealth matches 20.. run effect give @s minecraft:instant_health 1 100 true

effect give @a minecraft:slow_falling 61 0 true
effect give @a minecraft:resistance 61 10 true
effect give @a minecraft:fire_resistance 61 10 true
effect give @a minecraft:water_breathing 61 10 true
#effect give @a minecraft:invisibility 61 10 true

execute as @e[type=drowned] run data merge entity @s {DeathLootTable:""}
kill @e[type=drowned]
