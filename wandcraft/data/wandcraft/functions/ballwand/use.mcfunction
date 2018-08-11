function wandcraft:common/setcooldown

summon small_fireball ^ ^ ^0.5 {owner:{L:0L,M:0L},Thrower:{L:0L,M:0L},Fire:1000,Motion:[0.00001d, 0.00001d, 0.00001d],direction:[0.00001d, 0.00001d, 0.00001d],power:[0.0d, 0.0d, 0.0d],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Glowing:0b,DeathLootTable:"empty",NoAI:1b,Tags:["wandBall","wandRayNew"],ActiveEffects:[{Ambient:1b,Id:14b,Amplifier:1b,Duration:9000,ShowParticles:0b}]}

#Rotation
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Rotation[1] float 1.0 run data get entity @s Rotation[1] 1.0

#Owner
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] owner.L long 1 run data get entity @s UUIDLeast 1
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] owner.M long 1 run data get entity @s UUIDMost 1
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Thrower.L long 1 run data get entity @s UUIDLeast 1
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Thrower.M long 1 run data get entity @s UUIDMost 1

#Get X Motion
execute as @e[tag=wandBall,tag=wandRayNew] store result score wandBallRayX wandTempVal run data get entity @s Pos[0] 200000
execute as @s store result score wandBallRayX1 wandTempVal run data get entity @s Pos[0] 200000
scoreboard players operation wandBallRayX wandTempVal -= wandBallRayX1 wandTempVal

#Get Y Motion
execute as @e[tag=wandBall,tag=wandRayNew] store result score wandBallRayY wandTempVal run data get entity @s Pos[1] 200000
execute as @s store result score wandBallRayY1 wandTempVal run data get entity @s Pos[1] 200000
scoreboard players operation wandBallRayY wandTempVal -= wandBallRayY1 wandTempVal

#Get Z Motion
execute as @e[tag=wandBall,tag=wandRayNew] store result score wandBallRayZ wandTempVal run data get entity @s Pos[2] 200000
execute as @s store result score wandBallRayZ1 wandTempVal run data get entity @s Pos[2] 200000
scoreboard players operation wandBallRayZ wandTempVal -= wandBallRayZ1 wandTempVal

#Set X Motion
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] direction[0] double 0.00001 run scoreboard players get wandBallRayX wandTempVal
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Motion[0] double 0.00001 run scoreboard players get wandBallRayX wandTempVal
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] power[0] double 0.00001 run scoreboard players get wandBallRayX wandTempVal

#Set Y Motion
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] direction[1] double 0.00001 run scoreboard players get wandBallRayY wandTempVal
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Motion[1] double 0.00001 run scoreboard players get wandBallRayY wandTempVal
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] power[1] double 0.00001 run scoreboard players get wandBallRayY wandTempVal

#Set Z Motion
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] direction[2] double 0.00001 run scoreboard players get wandBallRayZ wandTempVal
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] Motion[2] double 0.00001 run scoreboard players get wandBallRayZ wandTempVal
execute store result entity @e[tag=wandBall,tag=wandRayNew,limit=1] power[2] double 0.00001 run scoreboard players get wandBallRayZ wandTempVal


#Move up to eye level
tp @e[tag=wandBall,tag=wandRayNew,limit=1,sort=nearest] ~ ~1.5 ~

#Cleanup Tags
tag @e[tag=wandBall,tag=wandRayNew] remove wandRayNew
