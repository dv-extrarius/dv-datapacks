scoreboard objectives add rndgenTimer dummy
scoreboard objectives add rndgenInput dummy
scoreboard objectives add rndgenTemp dummy
scoreboard objectives add rndgenOutput dummy
scoreboard objectives add rndgenSeed dummy
scoreboard objectives add rndgenConst dummy

scoreboard players set c0 rndgenConst 7981
scoreboard players set c1 rndgenConst 1195
scoreboard players set c2 rndgenConst 2899
scoreboard players set c3 rndgenConst 1000
scoreboard players set c4 rndgenConst 2826
scoreboard players set 277803737 rndgenConst 277803737
scoreboard players set 8192 rndgenConst 8192
scoreboard players set 4096 rndgenConst 4096
scoreboard players set 128 rndgenConst 128
scoreboard players set 64 rndgenConst 64

scoreboard players set a0 rndgenSeed 0
execute as @r store result score a0 rndgenSeed run data get entity @s UUIDLeast 1
execute as @r store result score a1 rndgenSeed run data get entity @s UUIDLeast 1
execute as @r store result score a2 rndgenSeed run data get entity @s UUIDLeast 1
execute as @r store result score a3 rndgenSeed run data get entity @s UUIDLeast 1
execute as @r store result score a4 rndgenSeed run data get entity @s UUIDLeast 1
function andomgen:details/normalize

scoreboard players set random_limit rndgenInput 100
scoreboard players set random rndgenOutput 0

function randomgen:details/reseed

