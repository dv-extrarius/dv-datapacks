execute store result score entityHealth wandTempVal run data get entity @s Health 10
scoreboard players remove entityHealth wandTempVal 50
execute store result entity @s Health float 0.1 run scoreboard players get entityHealth wandTempVal
execute anchored eyes run summon small_fireball ^ ^ ^ {Fire:2,direction:[0.0d, 10.0, 0.0d],power:[0.0d, 10.0d, 0.0d],DeathLootTable:"empty",ActiveEffects:[{Ambient:1b,Id:14b,Amplifier:1b,Duration:9000,ShowParticles:0b}]}
