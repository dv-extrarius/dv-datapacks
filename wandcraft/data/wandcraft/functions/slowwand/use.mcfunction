function wandcraft:common/setcooldown
summon minecraft:slime ~ ~ ~ {Size:0,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Glowing:0b,DeathLootTable:"empty",NoAI:1b,Tags:["wandSlowRay","wandRay","wandRayNew"],ActiveEffects:[{Ambient:1b,Id:14b,Amplifier:1b,Duration:9000,ShowParticles:0b}]}
tp @e[tag=wandSlowRay,tag=wandRayNew,limit=1,sort=nearest] @s
tp @e[tag=wandSlowRay,tag=wandRayNew,limit=1,sort=nearest] ~ ~1.5 ~
tag @e[tag=wandSlowRay,tag=wandRayNew,limit=1,sort=nearest] remove wandRayNew
