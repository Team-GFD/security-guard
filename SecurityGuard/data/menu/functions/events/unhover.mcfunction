# Author: SirSheepe
# Version: 1.16+

tag @s remove shp_hover

execute if score @s menu_id matches 1 run function menu:events/unhover/start
execute if score @s menu_id matches 2 run function menu:events/unhover/countdown
execute if score @s menu_id matches 3 run function menu:events/unhover/door_title
execute if score @s menu_id matches 4 run function menu:events/unhover/door_switch

execute if score @s menu_id matches 6 run function menu:events/unhover/artifact/up_arrow
execute if score @s menu_id matches 7 run function menu:events/unhover/artifact/down_arrow