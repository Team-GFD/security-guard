# Author: Denniss
# Version: 1.17+
# Edited by SirSheepe

execute if block ~ ~-1 ~ minecraft:gold_block positioned ~ ~-50 ~ unless entity @e[tag=AI_pathfind,tag=near_guard,distance=..1,sort=nearest,limit=1] unless entity @e[tag=AI_pathfind,distance=.01..1,nbt={ActiveEffects:[{Id:2b}]}] positioned ~ ~50 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=!captured] run function game:ingame/capturing
