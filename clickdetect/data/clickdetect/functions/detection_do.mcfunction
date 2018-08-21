execute if entity @s[tag=!cd_DetectActive] run summon villager ^ ^ ^1 {Tags:["cd_ClickVillagerA"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"cd_NoPush",Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]}
execute if entity @s[tag=!cd_DetectActive] run summon villager ^0.5 ^ ^0.5 {Tags:["cd_ClickVillagerB"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"cd_NoPush",Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]}
execute if entity @s[tag=!cd_DetectActive] run summon villager ^-0.5 ^ ^0.5 {Tags:["cd_ClickVillagerC"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"cd_NoPush",Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]}
#ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]
tag @s add cd_DetectActive

##############################################################################################
data merge entity @e[tag=cd_ClickVillagerA,type=villager,sort=nearest,limit=1] {Health:1000000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]}
data merge entity @e[tag=cd_ClickVillagerB,type=villager,sort=nearest,limit=1] {Health:1000000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]}
data merge entity @e[tag=cd_ClickVillagerC,type=villager,sort=nearest,limit=1] {Health:1000000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}]}
##############################################################################################

execute store result entity @e[tag=cd_ClickVillagerA,type=villager,sort=nearest,limit=1] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000
execute store result entity @e[tag=cd_ClickVillagerA,type=villager,sort=nearest,limit=1] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000
execute store result entity @e[tag=cd_ClickVillagerB,type=villager,sort=nearest,limit=1] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000
execute store result entity @e[tag=cd_ClickVillagerB,type=villager,sort=nearest,limit=1] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000
execute store result entity @e[tag=cd_ClickVillagerC,type=villager,sort=nearest,limit=1] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000
execute store result entity @e[tag=cd_ClickVillagerC,type=villager,sort=nearest,limit=1] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000
##############################################################################################
scoreboard players operation NewX cd_Temp = @s cd_MoveX
scoreboard players operation NewX cd_Temp += @s cd_PrevMoveX
scoreboard players operation NewX cd_Temp += @s cd_PosX
scoreboard players operation NewX cd_Temp += @s cd_FrontX

scoreboard players operation NewY cd_Temp = @s cd_MoveY
scoreboard players operation NewY cd_Temp += @s cd_PrevMoveY
scoreboard players operation NewY cd_Temp += @s cd_PosY
scoreboard players operation NewY cd_Temp += @s cd_FrontY
scoreboard players add NewY cd_Temp 500

scoreboard players operation NewZ cd_Temp = @s cd_MoveZ
scoreboard players operation NewZ cd_Temp += @s cd_PrevMoveZ
scoreboard players operation NewZ cd_Temp += @s cd_PosZ
scoreboard players operation NewZ cd_Temp += @s cd_FrontZ

execute store result entity @e[tag=cd_ClickVillagerA,type=villager,sort=nearest,limit=1] Pos[0] double 0.001 run scoreboard players get NewX cd_Temp
execute store result entity @e[tag=cd_ClickVillagerA,type=villager,sort=nearest,limit=1] Pos[1] double 0.001 run scoreboard players get NewY cd_Temp
execute store result entity @e[tag=cd_ClickVillagerA,type=villager,sort=nearest,limit=1] Pos[2] double 0.001 run scoreboard players get NewZ cd_Temp
##############################################################################################

scoreboard players operation NewX cd_Temp -= @s cd_FrontX
scoreboard players operation TempX cd_Temp = @s cd_FrontX
scoreboard players operation TempX cd_Temp += @s cd_LeftX
scoreboard players operation TempX cd_Temp /= Const2 cd_Constant
scoreboard players operation NewX cd_Temp += TempX cd_Temp

scoreboard players operation NewY cd_Temp -= @s cd_FrontY
scoreboard players operation TempY cd_Temp = @s cd_FrontY
scoreboard players operation TempY cd_Temp += @s cd_LeftY
scoreboard players operation TempY cd_Temp /= Const2 cd_Constant
scoreboard players operation NewY cd_Temp += TempY cd_Temp

scoreboard players operation NewZ cd_Temp -= @s cd_FrontZ
scoreboard players operation TempZ cd_Temp = @s cd_FrontZ
scoreboard players operation TempZ cd_Temp += @s cd_LeftZ
scoreboard players operation TempZ cd_Temp /= Const2 cd_Constant
scoreboard players operation NewZ cd_Temp += TempZ cd_Temp

execute store result entity @e[tag=cd_ClickVillagerB,type=villager,sort=nearest,limit=1] Pos[0] double 0.001 run scoreboard players get NewX cd_Temp
execute store result entity @e[tag=cd_ClickVillagerB,type=villager,sort=nearest,limit=1] Pos[1] double 0.001 run scoreboard players get NewY cd_Temp
execute store result entity @e[tag=cd_ClickVillagerB,type=villager,sort=nearest,limit=1] Pos[2] double 0.001 run scoreboard players get NewZ cd_Temp
###############################################################################################

scoreboard players operation NewX cd_Temp -= TempX cd_Temp
scoreboard players operation TempX cd_Temp = @s cd_FrontX
scoreboard players operation TempX cd_Temp -= @s cd_LeftX
scoreboard players operation TempX cd_Temp /= Const2 cd_Constant
scoreboard players operation NewX cd_Temp += TempX cd_Temp

scoreboard players operation NewY cd_Temp -= TempY cd_Temp
scoreboard players operation TempY cd_Temp = @s cd_FrontY
scoreboard players operation TempY cd_Temp -= @s cd_LeftY
scoreboard players operation TempY cd_Temp /= Const2 cd_Constant
scoreboard players operation NewY cd_Temp += TempY cd_Temp

scoreboard players operation NewZ cd_Temp -= TempZ cd_Temp
scoreboard players operation TempZ cd_Temp = @s cd_FrontZ
scoreboard players operation TempZ cd_Temp -= @s cd_LeftZ
scoreboard players operation TempZ cd_Temp /= Const2 cd_Constant
scoreboard players operation NewZ cd_Temp += TempZ cd_Temp

execute store result entity @e[tag=cd_ClickVillagerC,type=villager,sort=nearest,limit=1] Pos[0] double 0.001 run scoreboard players get NewX cd_Temp
execute store result entity @e[tag=cd_ClickVillagerC,type=villager,sort=nearest,limit=1] Pos[1] double 0.001 run scoreboard players get NewY cd_Temp
execute store result entity @e[tag=cd_ClickVillagerC,type=villager,sort=nearest,limit=1] Pos[2] double 0.001 run scoreboard players get NewZ cd_Temp
###############################################################################################

tag @s remove cd_RightClick
tag @s[scores={cd_Talked=1..}] add cd_RightClick

tag @s remove cd_LeftClick
tag @s[scores={cd_Damage=1..}] add cd_LeftClick