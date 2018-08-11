summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"explosion",ReapplicationDelay:10,Radius:2.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:5,DurationOnUse:0,Effects:[{Id:20b,Duration:5,Amplifier:1b}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"lava",ReapplicationDelay:10,Radius:2.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:5,DurationOnUse:0}
execute as @e[type=!player,nbt={Attributes:[{Name:"generic.attackDamage"}]},distance=..2] at @s run function wandcraft:boomwand/exdamage
kill @s
