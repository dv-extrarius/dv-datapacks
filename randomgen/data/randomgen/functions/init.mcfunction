scoreboard objectives add rndgenVariable dummy
scoreboard objectives add rndgenTimer dummy
scoreboard objectives add rndgenConstant dummy


scoreboard players set RandDivisor rndgenConstant 65536
scoreboard players set SeedMultiplierA rndgenConstant 747796405
scoreboard players set SeedMultiplierB rndgenConstant 277803737
scoreboard players set SeedMultiplierC rndgenConstant 1103515245
scoreboard players set StreamAddend1A rndgenConstant 949870287
scoreboard players set StreamAddend1B rndgenConstant 485826193
scoreboard players set StreamAddend2A rndgenConstant 130973863
scoreboard players set StreamAddend2B rndgenConstant 834267193
scoreboard players set StreamAddend3A rndgenConstant 459976955
scoreboard players set StreamAddend3B rndgenConstant 994191817

scoreboard players set temp rndgenVariable 0
scoreboard players set seedTimer rndgenTimer 0
scoreboard players set timer2 rndgenTimer 0
scoreboard players set timer3 rndgenTimer 0

scoreboard players set seed1A rndgenVariable 0
scoreboard players set rand1A rndgenVariable 0
execute as @r store result score seed1A rndgenVariable run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed1B rndgenVariable 0
scoreboard players set rand1B rndgenVariable 0
execute as @r store result score seed1B rndgenVariable run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed2A rndgenVariable 0
scoreboard players set rand2A rndgenVariable 0
execute as @r store result score seed2A rndgenVariable run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed2B rndgenVariable 0
scoreboard players set rand2B rndgenVariable 0
execute as @r store result score seed2B rndgenVariable run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed3A rndgenVariable 0
scoreboard players set rand3A rndgenVariable 0
execute as @r store result score seed3A rndgenVariable run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed3B rndgenVariable 0
scoreboard players set rand3B rndgenVariable 0
execute as @r store result score seed3B rndgenVariable run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set random rndgenVariable 0