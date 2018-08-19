scoreboard players set random_range rndgenTemp 2147483647
scoreboard players operation random_range rndgenTemp %= random_limit rndgenInput
scoreboard players add random_range rndgenTemp 1
scoreboard players operation random rndgenOutput = random rndgenTemp
execute if score random rndgenOutput < random_range rndgenTemp run function randomgen:generate
scoreboard players operation random rndgenOutput *= 277803737 rndgenConst
scoreboard players operation random rndgenOutput %= random_limit rndgenInput
