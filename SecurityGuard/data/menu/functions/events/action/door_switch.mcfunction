# Author: SirSheepe
# Version: 1.16+

scoreboard players operation #save menu_id = #doors menu_id
scoreboard players set #doors menu_id 1
scoreboard players operation #doors menu_id -= #save menu_id

execute if score #doors menu_id matches 0 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 15
execute if score #doors menu_id matches 1 run data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 17

execute if score #doors menu_id matches 0 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 14
execute if score #doors menu_id matches 1 run data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 16

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1

tag @s add shp_handled
