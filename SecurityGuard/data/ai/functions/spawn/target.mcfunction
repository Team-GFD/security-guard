# Author: Denniss
# Version: 1.16.1

data modify entity @e[tag=AI_pathfind,tag=AI_spawning,limit=1] AngryAt set from entity @e[tag=AI_target,sort=random,limit=1] UUID
tag @e[tag=AI_spawning] remove AI_spawning
