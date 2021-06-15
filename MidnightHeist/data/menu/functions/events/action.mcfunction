# Author: SirSheepe
# Version: 1.16+

execute if score @s[tag=!shp_handled] menu_id matches 1 run function menu:events/action/start
execute if score @s[tag=!shp_handled] menu_id matches 2 run function menu:events/action/countdown

execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 4 run function menu:events/action/door_switch

execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 6 run function menu:events/action/artifact/up_arrow
execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 7 run function menu:events/action/artifact/down_arrow

execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 9 run function menu:events/action/aicount/up_arrow
execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 10 run function menu:events/action/aicount/down_arrow

execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 12 run function menu:events/action/aimode/up_arrow
execute if score #starting game matches 0 if score @s[tag=!shp_handled] menu_id matches 13 run function menu:events/action/aimode/down_arrow

execute if score @s[tag=!shp_handled] menu_id matches 14 run function menu:events/action/tutorial/go_button_thief
execute if score @s[tag=!shp_handled] menu_id matches 15 run function menu:events/action/tutorial/go_button_guard
execute if score @s[tag=!shp_handled] menu_id matches 16 run function menu:events/action/tutorial/return

tag @s remove shp_handled