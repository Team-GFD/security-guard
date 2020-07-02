# Author: Denniss
# Version: 1.15.2

execute as @e[type=creeper,tag=AI_pathfind] at @s unless entity @e[type=cat,tag=guard,distance=..10] run function ai:near_guard/escaped

execute if entity @s[type=creeper,tag=AI] run schedule function ai:near_guard/escape_check 2s