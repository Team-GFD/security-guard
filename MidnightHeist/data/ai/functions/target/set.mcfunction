# Author: Denniss
# Version: 1.17+
# called from ai:main

tag @e[tag=AI_target,sort=nearest,limit=1,distance=..1] add AI_target_active
effect give @e[tag=AI_target_active,distance=..2] minecraft:wither 100 1
data modify entity @s AngryAt set from entity @e[tag=AI_target,sort=nearest,limit=1,distance=..1] UUID
tag @s remove AI_not_angry
