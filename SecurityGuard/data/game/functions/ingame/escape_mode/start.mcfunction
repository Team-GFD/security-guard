# Author: SirSheepe
# Version: 1.16+

scoreboard players set state game 3
schedule function game:ingame/global_end 60s replace

scoreboard players set esc_time_left game 60
bossbar set minecraft:stolen value 60
bossbar set minecraft:stolen max 60
bossbar set minecraft:stolen name {"text":"Time Left: 60s","color":"red"}

tag @a[team=2Thief,sort=random,limit=1] add the_chosen_one

execute at @a[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_open,sort=nearest,limit=1] run function game:ingame/doors/open_door
execute at @a[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_open,sort=furthest,limit=1] run function game:ingame/doors/open_door
execute at @a[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_open,sort=random,limit=1] run function game:ingame/doors/open_door

tag @a[tag=the_chosen_one] remove the_chosen_one

kill @e[tag=AI_target]

schedule function game:ingame/escape_mode/timer 1s