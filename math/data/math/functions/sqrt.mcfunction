scoreboard players operation b extrepTemp = Value extrepInput
execute if score value input matches 0 run scoreboard players set b extrepTemp 1

#Estimate based on fixed series of values (which always produce a correct value or underestimate)
scoreboard players set x extrepTemp 1
execute if score value input matches 16.. run scoreboard players set x extrepTemp 4
execute if score value input matches 256.. run scoreboard players set x extrepTemp 16
execute if score value input matches 4096.. run scoreboard players set x extrepTemp 64
execute if score value input matches 65536.. run scoreboard players set x extrepTemp 256
execute if score value input matches 1048576.. run scoreboard players set x extrepTemp 1024
execute if score value input matches 16777216.. run scoreboard players set x extrepTemp 4096
execute if score value input matches 268435456.. run scoreboard players set x extrepTemp 16384

#Adjust the estimate with a single newton iteration - since it was an underestimate, this will produce an overestimate
scoreboard players operation prevx extrepTemp = x extrepTemp
scoreboard players operation t extrepTemp = b extrepTemp
scoreboard players operation t extrepTemp /= x extrepTemp
scoreboard players operation t extrepTemp += x extrepTemp
scoreboard players operation t extrepTemp /= 2 extrepConst
scoreboard players operation x extrepTemp = t extrepTemp

#Refine the estimate. Exhaustive testing showed 6 iterations suffice for values 1..2147483647
function math:details/newton_step

execute if score value input matches 0 run scoreboard players set x extrepTemp 0
scoreboard players operation Sqrt extrepOutput = x extrepTemp
