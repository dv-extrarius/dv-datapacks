scoreboard players operation prevx extrepTemp = x extrepTemp
scoreboard players operation t extrepTemp = b extrepTemp
scoreboard players operation t extrepTemp /= x extrepTemp
scoreboard players operation t extrepTemp += x extrepTemp
scoreboard players operation t extrepTemp /= 2 extrepConst
execute if score t extrepTemp < x extrepTemp run scoreboard players operation x extrepTemp = t extrepTemp
execute unless score prevx extrepTemp = x extrepTemp run function math:details/newton_step