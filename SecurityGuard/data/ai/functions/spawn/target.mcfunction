# Author: Denniss
# Version: 1.16.1
# called from ai:spawn/spawn

# find artifact not targeted by another AI
execute as @e[tag=AI_target,sort=random,limit=1,tag=!AI_target_active] run function ai:spawn/set_target

tag @e[tag=AI_spawning] remove AI_spawning
