# Author: SirSheepe
# Version: 1.16+

scoreboard players remove #current_time menu_id 1

execute as @e[type=minecraft:armor_stand,tag=shp_prv_countdown] run function menu:items/private/set_correct_data

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~

execute if score #current_time menu_id matches 1.. run schedule function menu:items/private/countdown 20t

execute if score #current_time menu_id matches 0 run function menu:items/private/start