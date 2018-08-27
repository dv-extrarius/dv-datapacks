scoreboard players operation @s cd_PrevX = @s cd_PosX
scoreboard players operation @s cd_PrevY = @s cd_PosY
scoreboard players operation @s cd_PrevZ = @s cd_PosZ

scoreboard players operation @s cd_PrevMoveX /= Const3 cd_Constant
scoreboard players operation @s cd_PrevMoveY /= Const3 cd_Constant
scoreboard players operation @s cd_PrevMoveZ /= Const3 cd_Constant
scoreboard players operation @s cd_PrevMoveX += @s cd_MoveX
scoreboard players operation @s cd_PrevMoveY += @s cd_MoveY
scoreboard players operation @s cd_PrevMoveZ += @s cd_MoveZ

execute store result score @s cd_PosX run data get entity @s Pos[0] 1000
execute store result score @s cd_PosY run data get entity @s Pos[1] 1000
execute store result score @s cd_PosZ run data get entity @s Pos[2] 1000

scoreboard players operation @s cd_MoveX = @s cd_PosX
scoreboard players operation @s cd_MoveX -= @s cd_PrevX
scoreboard players operation @s cd_MoveY = @s cd_PosY
scoreboard players operation @s cd_MoveY -= @s cd_PrevY
scoreboard players operation @s cd_MoveZ = @s cd_PosZ
scoreboard players operation @s cd_MoveZ -= @s cd_PrevZ

summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["cd_DirDetector"],ReapplicationDelay:20,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:1,DurationOnUse:0,NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b}

execute as @e[tag=cd_DirDetector,type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..8] run function clickdetect:get_pos

scoreboard players operation @s cd_FrontX = TempX cd_Temp
scoreboard players operation @s cd_FrontX -= @s cd_PosX
scoreboard players operation @s cd_FrontY = TempY cd_Temp
scoreboard players operation @s cd_FrontY -= @s cd_PosY
scoreboard players operation @s cd_FrontZ = TempZ cd_Temp
scoreboard players operation @s cd_FrontZ -= @s cd_PosZ

tp @e[tag=cd_DirDetector,sort=nearest,limit=1,distance=..8] ^1 ^ ^

execute as @e[tag=cd_DirDetector,type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..8] run function clickdetect:get_pos

scoreboard players operation @s cd_LeftX = TempX cd_Temp
scoreboard players operation @s cd_LeftX -= @s cd_PosX
scoreboard players operation @s cd_LeftY = TempY cd_Temp
scoreboard players operation @s cd_LeftY -= @s cd_PosY
scoreboard players operation @s cd_LeftZ = TempZ cd_Temp
scoreboard players operation @s cd_LeftZ -= @s cd_PosZ

data merge entity @e[tag=cd_DirDetector,type=minecraft:area_effect_cloud,sort=nearest,limit=1] {Health:0.0f,DeathTime:19s}

