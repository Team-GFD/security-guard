# Author: SirSheepe
# Version: 1.16+

scoreboard players add #aicount menu_id 1
execute if score #aicount menu_id > #max_aicount menu_id run scoreboard players operation #aicount menu_id = #max_aicount menu_id

execute if score #aicount menu_id = #max_aicount menu_id run data modify entity @s ArmorItems[3].tag.CustomModelData set value 0
execute if score #aicount menu_id = #max_aicount menu_id run tag @s add shp_disabled
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aicount_down_arrow,tag=!shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 21
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aicount_down_arrow,tag=shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 22
tag @e[type=minecraft:armor_stand,tag=shp_size_aicount_down_arrow,limit=1] remove shp_disabled

function menu:items/private/set_aicount_number

execute as @a[tag=viewer] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1

tag @s add shp_handled
