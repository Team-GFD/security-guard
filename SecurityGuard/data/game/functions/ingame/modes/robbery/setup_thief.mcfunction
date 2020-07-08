# Author: InternetAlien
# Version: 1.15.2

loot give @s loot game:wire_cutters

loot give @s loot game:escape_potion
loot give @s loot game:invisiblity_potion
loot give @s loot game:stun_potion

scoreboard players set @a capture_time 0

execute as @s at @e[type=area_effect_cloud,tag=thief_spawn,tag=spawned,limit=1] rotated as @s run tp ~ ~ ~
