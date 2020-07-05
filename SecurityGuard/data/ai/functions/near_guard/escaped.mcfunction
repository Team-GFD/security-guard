# Author: Denniss
# Version: 1.16.1

execute as @e[tag=AI_pathfind,tag=near_guard] at @s unless entity @e[tag=guard,distance=..10] run tag @s remove near_guard

execute as @e[tag=AI_pathfind,tag=near_guard] if entity @s[tag=near_guard] run schedule function ai:near_guard/escaped 2s