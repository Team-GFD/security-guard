# Author: SirSheepe
# Version: 1.16+

scoreboard players set @s menu_id 2
scoreboard players set #current_time menu_id 5

tag @s add shp_prv_countdown

scoreboard players set #starting game 1

function menu:events/unhover/door_switch

function menu:items/private/set_correct_data
schedule function menu:items/private/countdown 20t

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~

tag @s add shp_handled