# Author: SirSheepe
# Version: 1.16+

execute if score @s[tag=!shp_handled] menu_id matches 1 run function menu:events/action/start
execute if score @s[tag=!shp_handled] menu_id matches 2 run function menu:events/action/countdown
execute if score @s[tag=!shp_handled] menu_id matches 3 run function menu:events/action/door_title
execute if score @s[tag=!shp_handled] menu_id matches 4 run function menu:events/action/door_switch

execute if score @s[tag=!shp_handled] menu_id matches 6 run function menu:events/action/artifact/up_arrow
execute if score @s[tag=!shp_handled] menu_id matches 7 run function menu:events/action/artifact/down_arrow

tag @s remove shp_handled