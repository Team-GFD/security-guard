# Author: SirSheepe
# Version: 1.16+

scoreboard players remove #aimode menu_id 1
execute if score #aimode menu_id < #min_aimode menu_id run scoreboard players operation #aimode menu_id = #min_aimode menu_id

execute if score #aimode menu_id = #min_aimode menu_id run data modify entity @s ArmorItems[3].tag.CustomModelData set value 0
execute if score #aimode menu_id = #min_aimode menu_id run tag @s add shp_disabled
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aimode_up_arrow,tag=!shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 19
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aimode_up_arrow,tag=shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 20
tag @e[type=minecraft:armor_stand,tag=shp_size_aimode_up_arrow,limit=1] remove shp_disabled

function menu:items/private/set_aimode_display

execute as @a[tag=viewer,scores={menu_rclick=1..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

tag @s add shp_handled
