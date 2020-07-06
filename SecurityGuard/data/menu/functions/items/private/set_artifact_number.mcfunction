# Author: SirSheepe
# Version: 1.16+

scoreboard players set #temp menu_id 10

scoreboard players operation #tens menu_id = #artifacts menu_id
scoreboard players operation #tens menu_id /= #temp menu_id

scoreboard players operation #ones menu_id = #tens menu_id
scoreboard players operation #ones menu_id *= #temp menu_id
scoreboard players operation #temp menu_id = #ones menu_id

scoreboard players operation #ones menu_id = #artifacts menu_id
scoreboard players operation #ones menu_id -= #temp menu_id

execute if score #tens menu_id matches 0 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 23
execute if score #tens menu_id matches 1 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 25
execute if score #tens menu_id matches 2 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 27
execute if score #tens menu_id matches 3 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 29
execute if score #tens menu_id matches 4 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 31
execute if score #tens menu_id matches 5 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 33
execute if score #tens menu_id matches 6 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 35
execute if score #tens menu_id matches 7 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 37
execute if score #tens menu_id matches 8 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 39
execute if score #tens menu_id matches 9 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 41

execute if score #ones menu_id matches 0 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 24
execute if score #ones menu_id matches 1 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 26
execute if score #ones menu_id matches 2 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 28
execute if score #ones menu_id matches 3 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 30
execute if score #ones menu_id matches 4 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 32
execute if score #ones menu_id matches 5 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 34
execute if score #ones menu_id matches 6 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 36
execute if score #ones menu_id matches 7 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 38
execute if score #ones menu_id matches 8 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 40
execute if score #ones menu_id matches 9 run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 42

execute if score #artifacts menu_id = #max_artifacts menu_id run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_up_arrow,limit=1] ArmorItems[3].tag.CustomModelData set value 0
execute if score #artifacts menu_id = #max_artifacts menu_id run tag @e[type=minecraft:armor_stand,tag=shp_artifact_up_arrow,limit=1] add shp_disabled
execute if score #artifacts menu_id = #min_artifacts menu_id run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_down_arrow,limit=1] ArmorItems[3].tag.CustomModelData set value 0
execute if score #artifacts menu_id = #min_artifacts menu_id run tag @e[type=minecraft:armor_stand,tag=shp_artifact_down_arrow,limit=1] add shp_disabled

#execute if score #artifacts menu_id = #max_artifacts menu_id run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_left_number,limit=1] ArmorItems[3].tag.CustomModelData set value 43
#execute if score #artifacts menu_id = #max_artifacts menu_id run data modify entity @e[type=minecraft:armor_stand,tag=shp_artifact_right_number,limit=1] ArmorItems[3].tag.CustomModelData set value 0