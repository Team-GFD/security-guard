# Author: SirSheepe
# Version: 1.16+

execute if entity @s[tag=!shp_open] at @s run fill ^-1 ^ ^2 ^-2 ^2 ^2 air
execute if entity @s[tag=!shp_open] at @s as @e[type=minecraft:armor_stand,tag=shp_door,sort=nearest,limit=1] at @s run function game:ingame/doors/private/open

tag @s add shp_open