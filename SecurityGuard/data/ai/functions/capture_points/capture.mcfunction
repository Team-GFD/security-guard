# Author: Denniss
# Version: 1.16.1
# @s = thief
# called from game:ingame\capture_points\capture

execute positioned ~ ~-47 ~ run kill @e[tag=AI_target,distance=..2]
execute as @e[tag=artifact,sort=nearest] if entity @s[tag=shortcut] at @s positioned ~ ~-50 ~ run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:redstone_wire replace minecraft:activator_rail
scoreboard players set @s capture_time 0

execute as @e[tag=AI_pathfind,limit=1] at @s run data modify entity @s AngryAt set from entity @e[tag=AI_target,sort=nearest,limit=1] UUID
