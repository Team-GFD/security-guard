# Author: SirSheepe
# Version: 1.16+

effect give @a[team=1Guard] speed 1 0 true

execute as @a[team=4Escaped] at @a run function game:ingame/modes/robbery/escaped

execute as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open] at @s as @a[team=2Thief,distance=..3.5] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass run function game:ingame/escape_mode/player_escape
execute as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open] at @s as @e[type=minecraft:villager,team=2Thief,distance=..3.5] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass run function game:ingame/escape_mode/ai_escape