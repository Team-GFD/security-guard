# Author: SirSheepe
# Version: 1.16+

execute as @e[type=minecraft:armor_stand,tag=shp_menu_item,tag=shp_fire] run data merge entity @s {Fire:20s}

schedule function menu:fire 10t replace