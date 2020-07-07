# Author: Dennis
# Edited by SirSheepe

execute if block ~ ~-1 ~ minecraft:gold_block positioned ~ ~-50 ~ unless entity @e[tag=AI_pathfind,tag=near_guard,distance=..1,sort=nearest,limit=1] positioned ~ ~50 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=!captured] run function game:ingame/capturing