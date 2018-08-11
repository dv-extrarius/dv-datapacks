scoreboard objectives add usedWandReal minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add usedWandProc dummy
scoreboard objectives add usedWand dummy

scoreboard objectives add wandTempVal dummy

execute as @a run scoreboard players operation @s usedWandProc = @s usedWandReal
scoreboard players set @a usedWand 0
