# Author: InternetAlien
# Version: 1.15.2

loot give @s loot game:wire_cutters

loot give @s loot game:escape_potion
loot give @s loot game:invisiblity_potion
loot give @s loot game:sabotage_potion

scoreboard players set @a capture_time 0

tp @s @e[type=area_effect_cloud,tag=thief_spawn,sort=random,limit=1]
