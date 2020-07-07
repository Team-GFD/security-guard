# Author: SirSheepe
# Version: 1.16+


execute if score #aimode menu_id matches 0 run data modify entity @e[type=minecraft:armor_stand,tag=shp_aimode_mode,limit=1] ArmorItems[3].tag.CustomModelData set value 46
execute if score #aimode menu_id matches 1 run data modify entity @e[type=minecraft:armor_stand,tag=shp_aimode_mode,limit=1] ArmorItems[3].tag.CustomModelData set value 47
execute if score #aimode menu_id matches 2 run data modify entity @e[type=minecraft:armor_stand,tag=shp_aimode_mode,limit=1] ArmorItems[3].tag.CustomModelData set value 48

execute if score #aimode menu_id = #max_aimode menu_id run data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aimode_up_arrow,limit=1] ArmorItems[3].tag.CustomModelData set value 0
execute if score #aimode menu_id = #max_aimode menu_id run tag @e[type=minecraft:armor_stand,tag=shp_size_aimode_up_arrow,limit=1] add shp_disabled
execute if score #aimode menu_id = #min_aimode menu_id run data modify entity @e[type=minecraft:armor_stand,tag=shp_size_aimode_down_arrow,limit=1] ArmorItems[3].tag.CustomModelData set value 0
execute if score #aimode menu_id = #min_aimode menu_id run tag @e[type=minecraft:armor_stand,tag=shp_size_aimode_down_arrow,limit=1] add shp_disabled