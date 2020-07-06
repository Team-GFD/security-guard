# Author: SirSheepe
# Version: 1.16+

execute if score #current_time menu_id matches 5 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 3
execute if score #current_time menu_id matches 5 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 4

execute if score #current_time menu_id matches 4 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 5
execute if score #current_time menu_id matches 4 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 6

execute if score #current_time menu_id matches 3 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 7
execute if score #current_time menu_id matches 3 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 8

execute if score #current_time menu_id matches 2 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 9
execute if score #current_time menu_id matches 2 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 10

execute if score #current_time menu_id matches 0..1 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 11
execute if score #current_time menu_id matches 0..1 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 12