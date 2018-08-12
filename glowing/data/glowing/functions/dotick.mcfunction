scoreboard players add glowingTimer glowTimer 1
execute unless score glowingTimer glowTimer matches 0..2 run scoreboard players set glowingTimer glowTimer 0

execute if score glowingTimer glowTimer matches 0 run scoreboard players add waveGlowTimer glowTimer 1
execute if score glowingTimer glowTimer matches 0 unless score waveGlowTimer glowTimer matches 0..11 run scoreboard players set waveGlowTimer glowTimer 0

tag @e[tag=madeGlowing] add stopGlowing
tag @e[tag=stopGlowing,tag=madeGlowing] remove madeGlowing
execute as @e[tag=stopGlowing] run data merge entity @s {Glowing: 0b}
execute as @a at @s run function glowing:adjusttags
tag @e[tag=madeGlowing] remove stopGlowing

execute as @e[tag=madeGlowing] run data merge entity @s {Glowing: 1b}
execute as @e[tag=stopGlowing] run data merge entity @s {Glowing: 0b}

