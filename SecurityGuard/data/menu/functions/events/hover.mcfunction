# Author: SirSheepe
# Version: 1.16+

tag @s add shp_hover

execute if score @s menu_id matches 1 run function menu:events/hover/start
execute if score @s menu_id matches 2 run function menu:events/hover/countdown
execute if score @s menu_id matches 3 run function menu:events/hover/door_title
execute if score @s menu_id matches 4 run function menu:events/hover/door_switch
execute if score @s menu_id matches 5 run function menu:events/hover/artifact/title
execute if score @s menu_id matches 6 run function menu:events/hover/artifact/up_arrow
execute if score @s menu_id matches 7 run function menu:events/hover/artifact/down_arrow