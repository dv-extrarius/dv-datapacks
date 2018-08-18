scoreboard players operation tempA vecTemp = vecX vecInput
scoreboard players operation tempA vecTemp *= vecX vecInput
scoreboard players operation tempB vecTemp = vecY vecInput
scoreboard players operation tempB vecTemp *= vecY vecInput
scoreboard players operation tempA vecTemp += tempB vecTemp
scoreboard players operation tempB vecTemp = vecZ vecInput
scoreboard players operation tempB vecTemp *= vecZ vecInput
scoreboard players operation tempA vecTemp += tempB vecTemp

#Vector Length Estimate
scoreboard players operation absX vecTemp = vecX vecInput
execute if score absX vecTemp matches ..-1 run scoreboard players operation absX vecTemp *= ConstNegOne vecConstant

scoreboard players operation absY vecTemp = vecY vecInput
execute if score absY vecTemp matches ..-1 run scoreboard players operation absY vecTemp *= ConstNegOne vecConstant

scoreboard players operation absZ vecTemp = vecZ vecInput
execute if score absZ vecTemp matches ..-1 run scoreboard players operation absZ vecTemp *= ConstNegOne vecConstant

scoreboard players operation tempB vecTemp = absX vecTemp
execute if score tempB vecTemp < absY vecTemp run scoreboard players operation tempB vecTemp = absY vecTemp
execute if score tempB vecTemp < absZ vecTemp run scoreboard players operation tempB vecTemp = absZ vecTemp
scoreboard players operation tempB vecTemp /= Const2 vecConstant

scoreboard players operation tempC vecTemp = absX vecTemp
scoreboard players operation tempC vecTemp += absY vecTemp
scoreboard players operation tempC vecTemp += absZ vecTemp
scoreboard players operation tempC vecTemp /= Cons4 vecConstant

scoreboard players operation tempB vecTemp += tempC vecTemp

#Square Root Calculation
scoreboard players operation tempX vecTemp = tempB vecTemp
scoreboard players operation tempB vecTemp = tempA vecTemp
#Refine Estimate 1
scoreboard players operation tempA vecTemp = tempB vecTemp
scoreboard players operation tempA vecTemp /= tempX vecTemp
execute if score tempA vecTemp < tempX vecTemp run scoreboard players operation tempX vecTemp /= Const2 vecConstant
#Refine Estimate 2
scoreboard players operation tempA vecTemp = tempB vecTemp
scoreboard players operation tempA vecTemp /= tempX vecTemp
execute if score tempA vecTemp < tempX vecTemp run scoreboard players operation tempX vecTemp /= Const2 vecConstant
#Refine Estimate 3
scoreboard players operation tempA vecTemp = tempB vecTemp
scoreboard players operation tempA vecTemp /= tempX vecTemp
execute if score tempA vecTemp < tempX vecTemp run scoreboard players operation tempX vecTemp /= Const2 vecConstant
#Refine Estimate 4
scoreboard players operation tempA vecTemp = tempB vecTemp
scoreboard players operation tempA vecTemp /= tempX vecTemp
execute if score tempA vecTemp < tempX vecTemp run scoreboard players operation tempX vecTemp /= Const2 vecConstant

scoreboard players set tempA vecTemp -1
execute if score tempA vecTemp = tempX vecTemp run scoreboard players set tempA vecTemp 0
#Newton Step #1-10
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
execute unless score tempA vecTemp = tempX vecTemp run function sandbox:len_newton
scoreboard players operation vecLength vecOutput = tempX vecTemp