# Author: SirSheepe
# Version: 1.16+

execute unless score #aicount menu_id = #max_aicount menu_id run scoreboard players remove #aicount menu_id 5
execute if score #aicount menu_id = #max_aicount menu_id if score #aicount_offset menu_id matches 0 run scoreboard players remove #aicount menu_id 5
execute if score #aicount menu_id = #max_aicount menu_id run scoreboard players operation #aicount menu_id -= #aicount_offset menu_id
execute if score #aicount menu_id < #min_aicount menu_id run scoreboard players operation #aicount menu_id = #min_aicount menu_id

execute if score #aicount menu_id = #min_aicount menu_id run data modify entity @s ArmorItems[3].tag.CustomModelData set value 0
execute if score #aicount menu_id = #min_aicount menu_id run tag @s add shp_disabled
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aicount_up_arrow,tag=!shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 19
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aicount_up_arrow,tag=shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 20
tag @e[type=minecraft:armor_stand,tag=shp_size_aicount_up_arrow,limit=1] remove shp_disabled

function menu:items/private/set_aicount_number

execute as @a[tag=viewer] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.1

tag @s add shp_handled
