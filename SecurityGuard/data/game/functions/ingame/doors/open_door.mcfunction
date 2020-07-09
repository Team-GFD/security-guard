# Author: SirSheepe
# Version: 1.16+

execute at @s run fill ^-1 ^ ^2 ^-2 ^2 ^2 air

execute as @e[type=minecraft:armor_stand,tag=shp_door,sort=nearest,limit=1] at @s run function game:ingame/doors/private/open