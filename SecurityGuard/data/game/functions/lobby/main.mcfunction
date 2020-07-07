# Author: InternetAlien
# Version: 1.15.2

execute as @a[gamemode=adventure] run function game:lobby/player

execute as @e[type=minecraft:area_effect_cloud,tag=join_marker] at @s run function game:lobby/teams/check

title @a[tag=shp_door_title] actionbar [{"text":"[!] ","color":"yellow"},{"text":"Have doors through which thieves must escape at the end of the game","color":"#79f03e"}]
title @a[tag=shp_artifact_title] actionbar [{"text":"[!] ","color":"yellow"},{"text":"Required amount of artifacts to leave the museum","color":"#79f03e"}]
title @a[tag=shp_aicount_title] actionbar [{"text":"[!] ","color":"yellow"},{"text":"The amount of AI thieves that spawn with the player thieves","color":"#79f03e"}]
title @a[tag=shp_aimode_title] actionbar [{"text":"[!] ","color":"yellow"},{"text":"How difficult the AI is to guard against","color":"#79f03e"}]