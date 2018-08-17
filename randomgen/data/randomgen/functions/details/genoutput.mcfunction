scoreboard players set random_range rndgenVariable 2147483647
scoreboard players set randSign rndgenVariable 1
execute if score random_limit rndgenInput matches ..-1 run scoreboard players set randSign rndgenVariable -1
scoreboard players operation random_limit rndgenInput *= randSign rndgenVariable
scoreboard players operation random_range rndgenVariable %= random_limit rndgenInput
scoreboard players add random_range rndgenVariable 1
scoreboard players operation random rndgenOutput = random rndgenVariable
scoreboard players operation random rndgenOutput %= random_limit rndgenInput
scoreboard players operation random_limit rndgenInput *= randSign rndgenVariable
execute unless score random rndgenOutput < random_range rndgenVariable run scoreboard players operation random rndgenOutput *= randSign rndgenVariable
execute if score random rndgenOutput < random_range rndgenVariable run function randomgen:generate
