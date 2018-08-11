#execute as @e[type=elder_guardian] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=wither_skeleton] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=stray] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=husk] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=zombie_villager] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=evoker] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=vex] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=vindicator] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=illusioner] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=creeper] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=skeleton] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=spider] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=giant] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=zombie] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=slime] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=ghast] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=zombie_pigman] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=enderman] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=cave_spider] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=silverfish] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=blaze] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=magma_cube] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=ender_dragon] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=wither] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=witch] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=endermite] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=guardian] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=shulker] run effect give @s minecraft:glowing 10 0 true
#execute as @e[type=drowned] run effect give @s minecraft:glowing 10 0 true

#execute as @a at @s run execute as @e[tag=madeGlowing,distance=65..] run data merge entity @s {Glowing: 0b}
#execute as @a at @s run tag @e[tag=madeGlowing,distance=65..] remove madeGlowing
##execute as @a at @s run tag @e[type=!player,type=!dolphin,distance=0..64,nbt={Attributes:[{Name:"generic.attackDamage"}]}] add madeGlowing
#execute as @a at @s run tag @e[type=!player,type=!dolphin,distance=0..64,nbt={Attributes:[{Name:"generic.attackDamage"}]}] add madeGlowing
##execute as @e[tag=madeGlowing,nbt=!{Glowing: 1b}] run data merge entity @s {Glowing: 1b}
##execute as @e[tag=madeGlowing] run effect give @s minecraft:glowing 10 0 true
#execute as @e[tag=madeGlowing,nbt=!{Glowing: 1b}] run data merge entity @s {Glowing: 1b}
##execute as @a at @s run effect give @e[type=!player,type=!dolphin,distance=0..64,nbt={Attributes:[{Name:"generic.attackDamage"}]}] minecraft:glowing 10 0 true

execute as @a at @s run function glowing:adjusttags

execute as @e[tag=stopGlowing] run data merge entity @s {Glowing: 0b}
tag @e[tag=stopGlowing] remove stopFlashing
execute as @e[tag=madeGlowing] run data merge entity @s {Glowing: 1b}
