# Author: Denniss
# Version: 1.16.1
# called from ai:spawn/target

# set initial AI target
tag @s add AI_target_active
data modify entity @e[tag=AI_pathfind,tag=AI_spawning,limit=1] AngryAt set from entity @s UUID
