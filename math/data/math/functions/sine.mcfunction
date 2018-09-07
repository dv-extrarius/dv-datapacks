#Calculate Sine of "Value extrepInput"
scoreboard players operation theta extrepTemp = Value extrepInput
scoreboard players add theta extrepTemp 1800000
scoreboard players operation theta extrepTemp %= #3600000 extrepConst
scoreboard players remove theta extrepTemp 1800000

execute unless entity d2ad831f-5604-4825-9190-c2561a9ef3b8 run summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,DurationOnUse:0,NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,UUIDLeast:-7957646866494065736L,UUIDMost:-3265809984163395547L}

#Set the rotation based on theta
execute store result entity d2ad831f-5604-4825-9190-c2561a9ef3b8 Rotation[0] float 0.0001 run scoreboard players get theta extrepTemp
execute store result entity d2ad831f-5604-4825-9190-c2561a9ef3b8 Rotation[1] float 0.0001 run scoreboard players get #0 extrepConst

#Teleport 1 unit towards the front, based on the angle previously supplied
execute positioned 0.0 0.0 0.0 rotated as d2ad831f-5604-4825-9190-c2561a9ef3b8 run tp d2ad831f-5604-4825-9190-c2561a9ef3b8 ^ ^ ^1

#Store the Sine and Cosine from entity's X and Z position
execute store result score NegSine extrepTemp run data get entity d2ad831f-5604-4825-9190-c2561a9ef3b8 Pos[0] 100000
scoreboard players set Sine extrepOutput 0
scoreboard players operation Sine extrepOutput -= NegSine extrepTemp
execute store result score Cosine extrepOutput run data get entity d2ad831f-5604-4825-9190-c2561a9ef3b8 Pos[2] 100000