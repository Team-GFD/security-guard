# Author: Denniss
# Version: 1.16.1
# called from ai:main

kill @e[tag=AI_target,distance=..20]
data modify entity @s AngryAt set from entity @e[tag=AI_target,sort=nearest,limit=1,distance=20..] UUID
