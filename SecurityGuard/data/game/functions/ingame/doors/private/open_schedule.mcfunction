# Author: SirSheepe
# Version: 1.16+

execute as @e[type=minecraft:armor_stand,tag=shp_door,tag=shp_open] at @s run function game:ingame/doors/private/open_loop

execute if entity @e[type=minecraft:armor_stand,tag=shp_door,tag=shp_open] run schedule function game:ingame/doors/private/open_schedule 1t replace