# Author: SirSheepe
# Version: 1.16+

tag @s remove shp_hover

tag @a[tag=!viewer] remove shp_door_title
tag @a[tag=!viewer] remove shp_artifact_title
tag @a[tag=!viewer] remove shp_aicount_title
tag @a[tag=!viewer] remove shp_aimode_title

execute if score @s menu_id matches 1 run function menu:events/unhover/start
execute if score @s menu_id matches 2 run function menu:events/unhover/countdown
execute if score @s menu_id matches 3 run function menu:events/unhover/door_title
execute if score @s menu_id matches 4 run function menu:events/unhover/door_switch
execute if score @s menu_id matches 5 run function menu:events/unhover/artifact/title
execute if score @s menu_id matches 6 run function menu:events/unhover/artifact/up_arrow
execute if score @s menu_id matches 7 run function menu:events/unhover/artifact/down_arrow
execute if score @s menu_id matches 8 run function menu:events/unhover/aicount/title
execute if score @s menu_id matches 9 run function menu:events/unhover/aicount/up_arrow

execute if score @s menu_id matches 10 run function menu:events/unhover/aicount/down_arrow
execute if score @s menu_id matches 11 run function menu:events/unhover/aimode/title
execute if score @s menu_id matches 12 run function menu:events/unhover/aimode/up_arrow
execute if score @s menu_id matches 13 run function menu:events/unhover/aimode/down_arrow