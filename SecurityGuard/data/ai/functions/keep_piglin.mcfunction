# Author: Denniss
# Version: 1.16.1
# @s = zombified piglin
# called from ai:kill and ai:doors/escaped

execute as @e[tag=AI_run] if score @s AI = @e[tag=AI_pathfind,distance=..2,sort=nearest,limit=1] AI run kill @s
tag @s remove AI_pathfind
tp @s @e[tag=AI_nbt,limit=1]