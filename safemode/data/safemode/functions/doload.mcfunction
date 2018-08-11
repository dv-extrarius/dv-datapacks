gamerule keepInventory true
gamerule doDaylightCycle false
gamerule randomTickSpeed 9
time set noon

scoreboard objectives add Constant dummy
scoreboard players set Const2 Constant 2

scoreboard objectives add safemodeFood food
scoreboard objectives add safemodeHealth health

scoreboard objectives add smHelp trigger

scoreboard objectives add smFood trigger
scoreboard objectives add smHealth trigger
scoreboard objectives add smSlowFall trigger
scoreboard objectives add smInvisibility trigger
scoreboard objectives add smWaterBreathing trigger
scoreboard objectives add smKillDrowned trigger

scoreboard players set @a smHelp 0

scoreboard players set @a smFood 1
scoreboard players set @a smHealth 1
scoreboard players set @a smSlowFall 1
scoreboard players set @a smInvisibility 1
scoreboard players set @a smWaterBreathing 1
scoreboard players set @a smKillDrowned 1

scoreboard players enable @a smHelp
scoreboard players enable @a smFood
scoreboard players enable @a smHealth
scoreboard players enable @a smSlowFall
scoreboard players enable @a smInvisibility
scoreboard players enable @a smWaterBreathing
scoreboard players enable @a smKillDrowned