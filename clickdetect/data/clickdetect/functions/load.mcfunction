scoreboard objectives add cd_Talked minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add cd_Damage minecraft.custom:minecraft.damage_dealt

scoreboard objectives add cd_Temp dummy
scoreboard objectives add cd_Output dummy
scoreboard objectives add cd_Input dummy
scoreboard objectives add cd_Constant dummy

scoreboard players set Const2 cd_Constant 2
scoreboard players set Const3 cd_Constant 3
scoreboard players set Const4 cd_Constant 4
scoreboard players set Const10 cd_Constant 10


########################################################

scoreboard objectives add cd_PosX dummy
scoreboard objectives add cd_PosY dummy
scoreboard objectives add cd_PosZ dummy

scoreboard objectives add cd_PrevX dummy
scoreboard objectives add cd_PrevY dummy
scoreboard objectives add cd_PrevZ dummy


execute as @a store result score @s cd_PosX run data get entity @s Pos[0] 1000
execute as @a store result score @s cd_PosY run data get entity @s Pos[1] 1000
execute as @a store result score @s cd_PosZ run data get entity @s Pos[2] 1000
execute as @a run scoreboard players operation @s cd_PrevX = @s cd_PosX
execute as @a run scoreboard players operation @s cd_PrevY = @s cd_PosY
execute as @a run scoreboard players operation @s cd_PrevX = @s cd_PosZ

########################################################
scoreboard objectives add cd_MoveX dummy
scoreboard objectives add cd_MoveY dummy
scoreboard objectives add cd_MoveZ dummy

scoreboard objectives add cd_PrevMoveX dummy
scoreboard objectives add cd_PrevMoveY dummy
scoreboard objectives add cd_PrevMoveZ dummy

execute as @a run scoreboard players set cd_MoveX 0
execute as @a run scoreboard players set cd_MoveY 0
execute as @a run scoreboard players set cd_MoveZ 0
execute as @a run scoreboard players set cd_PrevMoveX 0
execute as @a run scoreboard players set cd_PrevMoveY 0
execute as @a run scoreboard players set cd_PrevMoveZ 0

########################################################
scoreboard objectives add cd_FrontX dummy
scoreboard objectives add cd_FrontY dummy
scoreboard objectives add cd_FrontZ dummy
scoreboard objectives add cd_LeftX dummy
scoreboard objectives add cd_LeftY dummy
scoreboard objectives add cd_LeftZ dummy
########################################################
team add cd_NoPush
team modify cd_NoPush collisionRule never
team modify cd_NoPush nametagVisibility never