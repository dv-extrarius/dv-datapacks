execute as @e[tag=wandBoomRay] at @s if entity @e[type=!player,nbt={Attributes:[{Name:"generic.attackDamage"}]},distance=..1] run function wandcraft:boomwand/explode
execute as @e[tag=wandBoomRay] at @s unless block ^ ^ ^1 #minecraft:empty run function wandcraft:boomwand/explode
execute as @e[tag=wandBoomRay] at @s run particle minecraft:item minecraft:blaze_powder ^ ^ ^0.5 0.25 0.25 0.25 0.01 10 force
execute as @e[tag=wandBoomRay] at @s run particle minecraft:lava ^ ^ ^0.5 0.25 0.25 0.25 0.01 1 force

execute as @e[tag=wandBoomRay,tag=wandFarRay] at @s run function wandcraft:boomwand/explode
