# dv-datapacks
DataPacks for Minecraft

# ClickDetect
This datapack implements advanced click detection. It is based on the click detection in https://github.com/ImCoolYeah105/Datapack-Utilities , but uses 4 villagers at a time, and positions them based on your movement and relative to you (one in front, one to the front/left, one to the front/right, and one at your location), which helps catch clicks when strafing, moving backward and turning, and other situations that the original implementation would be more likely to miss. Even with 4 villagers, it isn't perfect and still occasionally misses clicks, but much less often than other implementations. To use, add "cd_Detect: 1b" to an item's data, and when it is the selected item, the player will get tagged with "cd_RightClick" or "cd_LeftClick" as appropriate (for a single tick only, though holding right click repeats right clicks until the button is released).

# Glowing
This datapack helps you know where mobs are by giving them an outline visible through walls. It makes mobs with a certain distance (16 blocks by default) always have the outline, and then from that distance out to a maximum (64 by default) outlines the mobs in a kind of expanding ring, like on early monochrome CRT sonar displays. Noting when different mobs are outlined in the expanding "ping" can help you know how far away they are.

# SafeMode
Moved to https://github.com/dv-extrarius/safemode

# Math
This datapack provides a few mathematical functions. 'sqrt' works on all positive inputs (and 0) and takes the input in "Value extrepInput" and provides the output in "Sqrt extrepOutput". 'sine' computes the sine of an angle given in degrees * 10000 in the variable "Value extrepInput" and provides the output in "Sine extrepOutput". 'cosine' works similarly to sine, providing the output in "Cosine extrepOutput". 'veclength' calculates the length of a 3d vector, taking inputs in "VecX extrepInput", "VecY extrepInput", and "VecZ extrepInput" and returns the value in "Length extrepOutput" (implementation detail: it also clobbers "Sqrt extrepOutput")

## RandomGen (subsumed into math, still in randomgen namespace)
A long-for-minecraft period random number generator. The period is 2^64, but the generator also reseeds every 60 seconds or every 1200 manual updates.
To use, set the score variable "random_limit rndgenInput" to one more than the maximum you want to generate, then call the function "randgen:generate". The output will be stored in the score variable "random rndgenOutput". If you need more than one number, simply save off the first one and repeat the aforementioned process.

Details: This generator is a 64-bit linear congruential generator. The top 31 bits of the generator are used for output. The 64-bit seed is stored across 5 variables (each holding <=13 bits) and basic multi-precision math is used to perform the 64-bit multiplication and addition required for each generated value.

# WandCraft
A kind of sandbox where I'm playing with different kinds of right-click commands to create different wand-like effects. It started when I saw the datapack "buildwand".
