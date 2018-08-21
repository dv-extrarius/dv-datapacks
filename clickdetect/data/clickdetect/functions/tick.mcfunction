execute as @a at @s run function clickdetect:pos_move

execute as @a at @s if entity @s[nbt={SelectedItem:{ tag:{cd_Detect: 1b} }}] run function clickdetect:detection_do
execute as @a at @s if entity @s[tag=cd_DetectActive] if entity @s[nbt=!{SelectedItem:{ tag:{cd_Detect:1b} }}] run function clickdetect:detection_end

execute as @a run scoreboard players set @s cd_Talked 0
execute as @a run scoreboard players set @s cd_Damage 0