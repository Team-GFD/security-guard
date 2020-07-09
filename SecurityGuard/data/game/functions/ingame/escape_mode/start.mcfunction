# Author: SirSheepe
# Version: 1.16+

time set midnight

scoreboard players set state game 3
schedule function game:ingame/global_end 60s replace

scoreboard players set esc_time_left game 60
bossbar set minecraft:stolen value 60
bossbar set minecraft:stolen max 60
bossbar set minecraft:stolen name {"text":"Time Left: 60s","color":"red"}

tag @e[team=2Thief,sort=random,limit=1] add the_chosen_one

execute at @a[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_open,sort=nearest,limit=1] run function game:ingame/doors/open_door
execute at @a[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_open,sort=furthest,limit=1] run function game:ingame/doors/open_door
execute at @a[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_open,sort=random,limit=1] run function game:ingame/doors/open_door

tag @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open,sort=random,tag=!shp_set,limit=1] add shp_a
tag @e[type=minecraft:area_effect_cloud,tag=shp_a] add shp_set

tag @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open,sort=random,tag=!shp_set,limit=1] add shp_b
tag @e[type=minecraft:area_effect_cloud,tag=shp_b] add shp_set

tag @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=shp_open,sort=random,tag=!shp_set,limit=1] add shp_c
tag @e[type=minecraft:area_effect_cloud,tag=shp_c] add shp_set

execute as @a unless entity @a[team=!2Thief,team=!3Dead] at @s run playsound minecraft:entity.villager.ambient voice @s ~ ~ ~ 1 0.8
execute as @a unless entity @a[team=!2Thief,team=!3Dead] run tellraw @s [{"text":"-> ","color":"white"},{"text":"[","color":"red"},{"text":"Radio","color":"dark_red"},{"text":"] ","color":"red"},{"text":"<","color":"white"},{"text":"Thief ","color":"dark_red"},{"text":"Driver","obfuscated":"true"},{"text":"> I've managed to hack the Museum's systems and open the ","color":"white"},{"selector":"@e[tag=shp_a]","color":"yellow"},{"text":" exit, the ","color":"white"},{"selector":"@e[tag=shp_b]","color":"yellow"},{"text":" exit, and the ","color":"white"},{"selector":"@e[tag=shp_c]","color":"yellow"},{"text":" exit.","color":"white"}]

execute as @a unless entity @a[team=!1Guard,team=!9Spectator] at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 1 2
execute as @a unless entity @a[team=!1Guard,team=!9Spectator] run tellraw @s [{"text":"-> ","color":"white"},{"text":"[","color":"aqua"},{"text":"Security","color":"dark_aqua"},{"text":"] ","color":"aqua"},{"text":"Emergency ","color":"white"},{"selector":"@e[tag=shp_a]","color":"yellow"},{"text":" exit, ","color":"white"},{"selector":"@e[tag=shp_b]","color":"yellow"},{"text":" exit, and ","color":"white"},{"selector":"@e[tag=shp_c]","color":"yellow"},{"text":" exit have opened unexpectedly. Triggering emergency lockdown in ","color":"white"},{"text":"60 seconds","color":"yellow"},{"text":".","color":"white"}]

schedule function game:ingame/escape_mode/private/message0 2s replace

tag @a[tag=the_chosen_one] remove the_chosen_one

kill @e[tag=AI_target]

tag @e remove shp_a
tag @e remove shp_b
tag @e remove shp_c

schedule function game:ingame/escape_mode/timer 1s