# dv-datapacks
DataPacks for Minecraft

# Glowing
This datapack helps you know where mobs are by giving them an outline visible through walls. It makes mobs with a certain distance (16 blocks by default) always have the outline, and then from that distance out to a maximum (64 by default) outlines the mobs in a kind of expanding ring, like on early monochrome CRT sonar displays. Noting when different mobs are outlined in the expanding "ping" can help you know how far away they are.

# SafeMode
This datapack practically makes you invulnerable, but each part can be toggled off to allow different kinds of danger. By default, it instantly heals all damage (and makes you extremely resistant to damage), gives you slow fall, water breathing, invisibility, refills food, and kills drowned (I find them annoying, and it makes them not drop loot). For each of these, there is a trigger you can execute. You can also /trigger smHelp to get a display of what the current settings are and clicking on a setting will toggle it.

Effect | Trigger Command
------ | ---------------
Refill Health (& Damage Resistance) | /trigger smHealth
Refill Food | /trigger smFood
Slow Fall | /trigger smSlowFall
Invisibility | /trigger smInvisibility
Water Breathing | /trigger smWaterBreathing
Kill Drowned | /trigger smKillDrowned

# RandomGen
A long-for-minecraft period random number generator. The period should be about 2^34, but the generator reseeds every 60 seconds or every 1200 manual updates.
To use, set the score variable "random_limit rndgenInput" to one more than the maximum you want to generate, then call the function "randgen:generate". The output will be stored in the score variable "random rndgenOutput". If you need more than one number, simply save off the first one and repeat the aforementioned process.

Details: This generator is a combination of 6 32-bit linear congruential generators, used in pairs. Only the top 16 bits of each generator are used. The second pair of generators is only updated every other tick, and the third pair of generators is only updated every 4th tick. The first generator in each pair contributes its 16 bit output to the high bits of the output, and the second generator in each pair contributes its 16 bit output to the low bits of the output.

# WandCraft
A kind of sandbox where I'm playing with different kinds of right-click commands to create different wand-like effects. It started when I saw the datapack "buildwand".
