# Author: SirSheepe
# Version: 1.16+

scoreboard players set @s menu_id 1
scoreboard players set #current_time menu_id 0

tag @s remove shp_prv_countdown

data modify entity @s[tag=!shp_hover] ArmorItems[3].tag.CustomModelData set value 1
data modify entity @s[tag=shp_hover] ArmorItems[3].tag.CustomModelData set value 2

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.5

scoreboard players set #starting game 0

schedule clear menu:items/private/countdown

tag @s add shp_handled