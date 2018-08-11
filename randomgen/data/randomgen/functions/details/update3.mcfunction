scoreboard players operation seed3A rndgenVariable *= SeedMultiplierC rndgenConstant
scoreboard players operation seed3A rndgenVariable += StreamAddend3A rndgenConstant
scoreboard players operation rand3A rndgenVariable = seed3A rndgenVariable
scoreboard players operation rand3A rndgenVariable /= RandDivisor rndgenConstant
scoreboard players operation rand3A rndgenVariable += RandDivisor rndgenConstant
scoreboard players operation rand3A rndgenVariable %= RandDivisor rndgenConstant

scoreboard players operation seed3B rndgenVariable *= SeedMultiplierA rndgenConstant
scoreboard players operation seed3B rndgenVariable += StreamAddend3B rndgenConstant
scoreboard players operation rand3B rndgenVariable = seed3B rndgenVariable
scoreboard players operation rand3B rndgenVariable /= RandDivisor rndgenConstant
scoreboard players operation rand3B rndgenVariable += RandDivisor rndgenConstant
scoreboard players operation rand3B rndgenVariable %= RandDivisor rndgenConstant