# Author: InternetAlien
# Version: 1.15.2

loot give @s loot game:wire_cutters

loot give @s loot game:escape_potion
loot give @s loot game:invisiblity_potion
loot give @s loot game:stun_potion

replaceitem entity @s[y=112,dy=-1000] hotbar.8 minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1}
replaceitem entity @s[y=113,dy=1000] hotbar.8 minecraft:orange_dye{display:{Name:'{"text":"Upper Floor","italic":false}'},tag:["killme"],floor:2,CustomModelData:2}

tag @s[y=112,dy=-1000] add lower
tag @s[y=113,dy=1000] add upper

scoreboard players set @a capture_time 0

execute as @s at @e[type=area_effect_cloud,tag=thief_spawn,tag=spawned,limit=1] rotated as @s run tp ~ ~ ~
