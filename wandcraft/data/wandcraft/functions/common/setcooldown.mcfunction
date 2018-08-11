scoreboard players set wandCooldown wandTempVal 20
execute store result entity @p SelectedItem.tag.wandCooldown byte 1 run scoreboard players get wandCooldown wandTempVal
