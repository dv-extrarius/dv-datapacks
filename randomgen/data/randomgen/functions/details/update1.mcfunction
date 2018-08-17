scoreboard players operation seed1A rndgenVariable *= SeedMultiplierA rndgenConstant
scoreboard players operation seed1A rndgenVariable += StreamAddend1A rndgenConstant
scoreboard players operation rand1A rndgenVariable = seed1A rndgenVariable
scoreboard players operation rand1A rndgenVariable /= RandHiDivisor rndgenConstant
scoreboard players operation rand1A rndgenVariable %= RandHiModulus rndgenConstant
scoreboard players operation rand1A rndgenVariable += RandHiModulus rndgenConstant
scoreboard players operation rand1A rndgenVariable %= RandHiModulus rndgenConstant

scoreboard players operation seed1B rndgenVariable *= SeedMultiplierB rndgenConstant
scoreboard players operation seed1B rndgenVariable += StreamAddend1B rndgenConstant
scoreboard players operation rand1B rndgenVariable = seed1B rndgenVariable
scoreboard players operation rand1B rndgenVariable /= RandLowDivisor rndgenConstant
scoreboard players operation rand1B rndgenVariable %= RandLowModulus rndgenConstant
scoreboard players operation rand1B rndgenVariable += RandLowModulus rndgenConstant
scoreboard players operation rand1B rndgenVariable %= RandLowModulus rndgenConstant
