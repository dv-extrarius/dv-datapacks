#line = r'''execute if score waveGlowTimer glowTimer matches %s run tag @e[type=!player,type=!dolphin,distance=%s,nbt={Attributes:[{Name:"generic.attackDamage"}]},nbt=!{Glowing: 1b}] add madeGlowing'''
#type=!player,type=!dolphin,distance=16..20,nbt={Attributes:[{Name:"generic.attackDamage"}]},nbt=!{Glowing: 1b}
line = r'''execute if score waveGlowTimer glowTimer matches %s if entity @a[distance=%s] run tag @s add madeGlowing'''
bandDistance = 4
bandDuration = 0
minDistance = 16
maxDistance = 64
timeMod = (3 * bandDistance)
distMod = maxDistance - minDistance
def dotdotspan(start, end):
    if start != end:
        return "%s..%s" % (start, end)
    return str(start)

maxDistance += (minDistance - maxDistance) % timeMod

print("#NOTE: The conditions for waveGlowTimer wrapping in 'dotick' must be made to match the maximum count in this file (%r)" % (timeMod - 1,))
#print(r'''tag @e[type=!player,type=!dolphin,distance=..%s,nbt={Attributes:[{Name:"generic.attackDamage"}]},nbt=!{Glowing: 1b}] add madeGlowing''' % (minDistance-1,))
print(r'''execute if entity @a[distance=%s] run tag @s add madeGlowing''' % (minDistance-1,))
for ii, dd in enumerate(range(minDistance, maxDistance)):
    startTime = ii % timeMod
    endTime = (startTime + bandDuration) % timeMod
    startDist = (dd - minDistance) % distMod + minDistance
    endDist = (startDist + bandDistance - minDistance) % distMod + minDistance
    if endTime != startTime + bandDuration:
        if endDist != startDist + bandDistance:
            print(line % (dotdotspan(startTime, timeMod-1), dotdotspan(startDist, distMod-1+minDistance)))
            print(line % (dotdotspan(0, endTime), dotdotspan(startDist, distMod-1+minDistance)))
            print(line % (dotdotspan(startTime, timeMod-1), dotdotspan(minDistance, endDist)))
            print(line % (dotdotspan(0, endTime), dotdotspan(minDistance, endDist)))
        else:
            print(line % (dotdotspan(startTime, timeMod-1), dotdotspan(dd, dd + bandDistance)))
            print(line % (dotdotspan(0, endTime), dotdotspan(dd, dd + bandDistance)))
    else:
        if endDist != startDist + bandDistance:
            print(line % (dotdotspan(startTime, endTime), dotdotspan(startDist, distMod-1+minDistance)))
            print(line % (dotdotspan(startTime, endTime), dotdotspan(minDistance, endDist)))
        else:
            print(line % (dotdotspan(startTime, endTime), dotdotspan(dd, dd + bandDistance)))
