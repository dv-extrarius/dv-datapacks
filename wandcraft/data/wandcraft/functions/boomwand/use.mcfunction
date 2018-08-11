function wandcraft:common/setcooldown
summon magma_cube ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Glowing:0b,DeathLootTable:"empty",NoAI:1b,Tags:["wandBoomRay","wandRay","wandRayNew"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9000,ShowParticles:0b}]}
tp @e[tag=wandBoomRay,tag=wandRayNew,limit=1,sort=nearest] @s
tp @e[tag=wandBoomRay,tag=wandRayNew,limit=1,sort=nearest] ~ ~1.5 ~
tag @e[tag=wandBoomRay,tag=wandRayNew,limit=1,sort=nearest] remove wandRayNew
