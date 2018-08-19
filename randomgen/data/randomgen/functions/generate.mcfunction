function randomgen:details/stepgen
execute if score random rndgenTemp matches ..-1 run function randomgen:details/generate
execute if score random rndgenTemp matches 0.. run function randomgen:details/genoutput
