#Detect changeds in usedWand count
scoreboard players operation @p usedWand = @p usedWandReal
scoreboard players operation @p usedWand -= @p usedWandProc
scoreboard players operation @p usedWandProc = @p usedWandReal

#Update cooldown of wand
execute if entity @p[nbt={SelectedItem:{tag: {wand: 1b}}}] run function wandcraft:common/deccooldown

execute as @p[scores={usedWand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},nbt=!{SelectedItem:{tag: {wand: 1b}}}] at @s run function wandcraft:ballwand/give
execute as @p[scores={usedWand=1..},nbt=!{SelectedItem:{tag: {wand: 1b}}}] run scoreboard players set @s usedWand 0
execute as @p[scores={usedWand=1..},nbt=!{SelectedItem:{tag: {wandCooldown: 0b}}}] run scoreboard players set @s usedWand 0

execute as @p[scores={usedWand=1..},nbt={SelectedItem:{tag: {wandtype: "boom"}}}] at @s run function wandcraft:boomwand/use
execute as @p[scores={usedWand=1..},nbt={SelectedItem:{tag: {wandtype: "slow"}}}] at @s run function wandcraft:slowwand/use
execute as @p[scores={usedWand=1..},nbt={SelectedItem:{tag: {wandtype: "ball"}}}] at @s run function wandcraft:ballwand/use

execute as @e[tag=wandRay] at @s if block ^ ^ ^1 #minecraft:empty run tp @s ^ ^ ^1

execute as @a at @s run execute as @e[tag=wandRay,distance=33..] run tag @s add wandFarRay
execute as @a at @s run execute as @e[tag=wandRay,distance=..32] run tag @s remove wandFarRay

function wandcraft:boomwand/update
function wandcraft:slowwand/update
function wandcraft:ballwand/update
