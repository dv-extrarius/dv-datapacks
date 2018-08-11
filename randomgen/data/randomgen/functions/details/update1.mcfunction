scoreboard players operation seed1A rndgenVariable *= SeedMultiplierA rndgenConstant
scoreboard players operation seed1A rndgenVariable += StreamAddend1A rndgenConstant
scoreboard players operation rand1A rndgenVariable = seed1A rndgenVariable
scoreboard players operation rand1A rndgenVariable /= RandDivisor rndgenConstant
scoreboard players operation rand1A rndgenVariable += RandDivisor rndgenConstant
scoreboard players operation rand1A rndgenVariable %= RandDivisor rndgenConstant

scoreboard players operation seed1B rndgenVariable *= SeedMultiplierB rndgenConstant
scoreboard players operation seed1B rndgenVariable += StreamAddend1B rndgenConstant
scoreboard players operation rand1B rndgenVariable = seed1B rndgenVariable
scoreboard players operation rand1B rndgenVariable /= RandDivisor rndgenConstant
scoreboard players operation rand1B rndgenVariable += RandDivisor rndgenConstant
scoreboard players operation rand1B rndgenVariable %= RandDivisor rndgenConstant