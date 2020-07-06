# Author: Denniss
# Version: 1.16.1
# called from game:ingame\capturing

execute as @e[tag=AI_target,distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[tag=AI_pathfind,distance=..3,sort=nearest,limit=1] run effect give @s[tag=AI] minecraft:slowness 1 10
