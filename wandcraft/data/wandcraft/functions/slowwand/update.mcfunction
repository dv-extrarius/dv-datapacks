execute as @e[tag=wandSlowRay] at @s if entity @e[type=!player,nbt={Attributes:[{Name:"generic.attackDamage"}]},distance=..1] run function wandcraft:slowwand/slow
execute as @e[tag=wandSlowRay] at @s unless block ^ ^ ^1 #minecraft:empty run function wandcraft:slowwand/slow
execute as @e[tag=wandSlowRay] at @s run particle minecraft:block minecraft:ice ^ ^ ^0.5 0.25 0.25 0.25 0.01 10 force
execute as @e[tag=wandSlowRay] at @s run particle minecraft:splash ^ ^ ^0.5 0.25 0.25 0.25 0.01 1 force

execute as @e[tag=wandSlowRay,tag=wandFarRay] at @s run function wandcraft:slowwand/slow
