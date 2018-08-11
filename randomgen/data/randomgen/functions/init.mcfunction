scoreboard objectives add randgen dummy
scoreboard objectives add Constant dummy


scoreboard players set RandDivisor Constant 65536
scoreboard players set SeedMultiplier Constant 747796405
scoreboard players set StreamAddend1 Constant 949870287
scoreboard players set StreamAddend2 Constant 485826193
scoreboard players set StreamAddend3 Constant 130973863
scoreboard players set StreamAddend4 Constant 834267193
scoreboard players set StreamAddend5 Constant 459976955

scoreboard players set timer randgen 0
scoreboard players set temp randgen 0

scoreboard players set seed1 randgen 0
scoreboard players set rand1 randgen 0
execute as @r store result score seed1 randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed2 randgen 0
scoreboard players set rand2 randgen 0
execute as @r store result score seed2 randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed3 randgen 0
scoreboard players set rand3 randgen 0
execute as @r store result score seed3 randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed4 randgen 0
scoreboard players set rand4 randgen 0
execute as @r store result score seed4 randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625

scoreboard players set seed5 randgen 0
scoreboard players set rand5 randgen 0
execute as @r store result score seed5 randgen run data get entity @s UUIDLeast 0.00000000023283064365386962890625
