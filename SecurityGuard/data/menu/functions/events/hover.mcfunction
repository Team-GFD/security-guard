# Author: SirSheepe
# Version: 1.16+

tag @s[tag=!shp_setting] add shp_hover

execute if score @s menu_id matches 1 run function menu:events/hover/start
execute if score @s menu_id matches 2 run function menu:events/hover/countdown
execute if score @s menu_id matches 3 run function menu:events/hover/door_title
execute if score @s menu_id matches 4 run function menu:events/hover/door_switch
execute if score @s menu_id matches 5 run function menu:events/hover/artifact/title
execute if score @s menu_id matches 6 run function menu:events/hover/artifact/up_arrow
execute if score @s menu_id matches 7 run function menu:events/hover/artifact/down_arrow
execute if score @s menu_id matches 8 run function menu:events/hover/aicount/title
execute if score @s menu_id matches 9 run function menu:events/hover/aicount/up_arrow

execute if score @s menu_id matches 10 run function menu:events/hover/aicount/down_arrow
execute if score @s menu_id matches 11 run function menu:events/hover/aimode/title
execute if score @s menu_id matches 12 run function menu:events/hover/aimode/up_arrow
execute if score @s menu_id matches 13 run function menu:events/hover/aimode/down_arrow

execute if score @s menu_id matches 14 run function menu:events/hover/tutorial/go_button_thief
execute if score @s menu_id matches 15 run function menu:events/hover/tutorial/go_button_guard