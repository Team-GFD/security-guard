# Author: Denniss
# Version: 1.15.2

execute as @a[team=Guard] at @s run tp @e[type=ocelot,tag=guard,sort=nearest,limit=1] ~ ~-50 ~ ~ ~

execute as @e[tag=AI_pathfind] at @s positioned ~ ~50 ~ run tp @e[type=minecraft:villager,tag=AI,distance=..2,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @e[tag=AI_pathfind,tag=AI] at @s positioned ~ ~50 ~ unless entity @e[type=villager,tag=AI,distance=..1] run function ai:killed

execute if score cooldown game matches -1 as @e[type=minecraft:villager,tag=AI,tag=!near_guard] at @s if block ~ ~-1 ~ minecraft:gold_block if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=!captured] run function game:ingame/capture_points/capturing
execute as @e[type=minecraft:enderman,tag=AI] at @s if entity @e[type=cat,tag=guard,distance=..6] run function ai:near_guard/run
