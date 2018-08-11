scoreboard players operation seed2A rndgenVariable *= SeedMultiplierB rndgenConstant
scoreboard players operation seed2A rndgenVariable += StreamAddend2A rndgenConstant
scoreboard players operation rand2A rndgenVariable = seed2A rndgenVariable
scoreboard players operation rand2A rndgenVariable /= RandDivisor rndgenConstant
scoreboard players operation rand2A rndgenVariable += RandDivisor rndgenConstant
scoreboard players operation rand2A rndgenVariable %= RandDivisor rndgenConstant

scoreboard players operation seed2B rndgenVariable *= SeedMultiplierC rndgenConstant
scoreboard players operation seed2B rndgenVariable += StreamAddend2B rndgenConstant
scoreboard players operation rand2B rndgenVariable = seed2B rndgenVariable
scoreboard players operation rand2B rndgenVariable /= RandDivisor rndgenConstant
scoreboard players operation rand2B rndgenVariable += RandDivisor rndgenConstant
scoreboard players operation rand2B rndgenVariable %= RandDivisor rndgenConstant