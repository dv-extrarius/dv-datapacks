execute store result score wandCooldown wandTempVal run data get entity @p[nbt={SelectedItem:{tag: {wand: 1b}}}] SelectedItem.tag.wandCooldown 1
execute unless score wandCooldown wandTempVal matches 0 run scoreboard players remove wandCooldown wandTempVal 1
execute store result entity @p[nbt={SelectedItem:{tag: {wand: 1b}}}] SelectedItem.tag.wandCooldown byte 1 run scoreboard players get wandCooldown wandTempVal
