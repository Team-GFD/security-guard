# Author: SirSheepe
# Version: 1.16+

scoreboard players set @s menu_id 2
scoreboard players set #current_time menu_id 5

tag @s add shp_prv_countdown

scoreboard players set #starting game 1

function menu:events/unhover/door_switch
execute as @e[type=armor_stand,tag=shp_size_artifact_up_arrow] run function menu:events/unhover/artifact/up_arrow
execute as @e[type=armor_stand,tag=shp_size_artifact_down_arrow] run function menu:events/unhover/artifact/down_arrow
execute as @e[type=armor_stand,tag=shp_size_aicount_up_arrow] run function menu:events/unhover/aicount/up_arrow
execute as @e[type=armor_stand,tag=shp_size_aicount_up_arrow] run function menu:events/unhover/aicount/down_arrow
execute as @e[type=armor_stand,tag=shp_size_aimode_up_arrow] run function menu:events/unhover/aimode/up_arrow
execute as @e[type=armor_stand,tag=shp_size_aimode_up_arrow] run function menu:events/unhover/aimode/down_arrow

function menu:items/private/set_correct_data
schedule function menu:items/private/countdown 20t

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~

tag @s add shp_handled