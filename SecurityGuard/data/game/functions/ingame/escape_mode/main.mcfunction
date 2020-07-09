# Author: SirSheepe
# Version: 1.16+

execute as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open] at @s as @a[team=2Thief,distance=..3.5] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass run function game:ingame/escape_mode/player_escape
execute as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open] at @s as @e[type=minecraft:villager,team=2Thief,distance=..3.5] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass run function game:ingame/escape_mode/ai_escape