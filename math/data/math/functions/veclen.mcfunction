scoreboard players operation a extrepTemp = VecX extrepInput
scoreboard players operation a extrepTemp *= VecX extrepInput
scoreboard players operation b extrepTemp = VecY extrepInput
scoreboard players operation b extrepTemp *= VecY extrepInput
scoreboard players operation a extrepTemp += b extrepTemp
scoreboard players operation b extrepTemp = VecZ extrepInput
scoreboard players operation b extrepTemp *= VecZ extrepInput
scoreboard players operation a extrepTemp += b extrepTemp

scoreboard players operation Value extrepInput = a extrepTemp

function math:sqrt

scoreboard players operation Length extrepOutput = Sqrt extrepOutput
