# Author: SirSheepe
# Version: 1.16+

scoreboard players add #artifacts menu_id 5
execute if score #artifacts menu_id > #max_artifacts menu_id run scoreboard players operation #artifacts menu_id = #max_artifacts menu_id

tellraw @a[tag=viewer,scores={menu_rclick=1..},tag=!shp_menu_tip] [{"text":"[TIP] ","color":"yellow"},{"text":"You can sneak click the arrows to change by an alternate amount!","color":"green"}]
execute as @a[tag=viewer,scores={menu_rclick=1..},tag=!shp_menu_tip] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
tag @a[tag=viewer,scores={menu_rclick=1..}] add shp_menu_tip

execute if score #artifacts menu_id = #max_artifacts menu_id run data modify entity @s ArmorItems[3].tag.CustomModelData set value 0
execute if score #artifacts menu_id = #max_artifacts menu_id run tag @s add shp_disabled
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_artifact_down_arrow,tag=!shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 21
data modify entity @e[type=minecraft:armor_stand,tag=shp_size_artifact_down_arrow,tag=shp_hover,limit=1] ArmorItems[3].tag.CustomModelData set value 22
tag @e[type=minecraft:armor_stand,tag=shp_size_artifact_down_arrow,limit=1] remove shp_disabled

function menu:items/private/set_artifact_number

execute as @a[tag=viewer,scores={menu_rclick=1..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

tag @s add shp_handled
