summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"explosion",ReapplicationDelay:10,Radius:2.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:5,DurationOnUse:0}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"lava",ReapplicationDelay:10,Radius:2.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:5,DurationOnUse:0}
kill @s
execute anchored eyes run summon firework_rocket ^ ^ ^  {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;11743532,5320730,15435844],FadeColors:[I;1973019,11743532,14602026,15435844,15790320]},{Type:0,Colors:[I;11743532,5320730,15435844],FadeColors:[I;1973019,11743532,14602026,15435844,15790320]}],Flight:3}}}}
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 fire{up:1,north:0,south:0,west:0,east:0} keep
