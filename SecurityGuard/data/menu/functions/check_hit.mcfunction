# Author: SirSheepe
# Version: 1.16+

scoreboard players set @s menu_viewers 0
tag @s add current_item

execute as @s[tag=shp_size_2x1] run function menu:sizes/2x1
execute as @s[tag=shp_size_5x3] run function menu:sizes/5x3
execute as @s[tag=shp_size_switch] run function menu:sizes/switch
execute as @s[tag=shp_size_door_title] run function menu:sizes/door_title
execute as @s[tag=shp_size_artifact_title] run function menu:sizes/artifact/title
execute as @s[tag=shp_size_artifact_up_arrow] run function menu:sizes/artifact/up_arrow
execute as @s[tag=shp_size_artifact_down_arrow] run function menu:sizes/artifact/down_arrow

#####

execute as @a run function menu:cast_ray

execute at @s run function menu:events/main

tag @a remove viewer
tag @s remove current_item