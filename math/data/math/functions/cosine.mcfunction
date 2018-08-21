#https://dspguru.com/dsp/tricks/parabolic-approximation-of-sin-and-cos/

scoreboard players operation theta extrepTemp = Value extrepInput

scoreboard players add theta extrepTemp 900000
scoreboard players operation theta extrepTemp %= #3600000 extrepConst
scoreboard players set sineSign extrepTemp 1
execute if score theta extrepTemp matches 1800000.. run scoreboard players set sineSign extrepTemp -1
scoreboard players operation theta extrepTemp %= #1800000 extrepConst

scoreboard players set temp extrepTemp 1800000
scoreboard players operation temp extrepTemp -= theta extrepTemp
execute if score theta extrepTemp matches 900001.. run scoreboard players operation theta extrepTemp = temp extrepTemp
execute if score theta extrepTemp matches 900001.. run scoreboard players remove theta extrepTemp 900000

scoreboard players operation x extrepTemp = theta extrepTemp
scoreboard players operation x extrepTemp /= #90 extrepConst
scoreboard players operation x extrepTemp -= #5000 extrepConst

scoreboard players operation s extrepTemp = x extrepTemp
scoreboard players operation s extrepTemp *= x extrepTemp
scoreboard players operation s extrepTemp /= #6930 extrepConst
scoreboard players operation s extrepTemp *= #-5741 extrepConst
scoreboard players operation s extrepTemp /= #10000 extrepConst
scoreboard players operation s extrepTemp += #7071 extrepConst
scoreboard players operation s extrepTemp += x extrepTemp
scoreboard players operation s extrepTemp *= sineSign extrepTemp

scoreboard players operation Cosine extrepOutput = s extrepTemp
