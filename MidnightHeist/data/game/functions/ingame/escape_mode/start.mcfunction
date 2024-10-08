# Author: SirSheepe
# Version: 1.16+

scoreboard players set state game 3

scoreboard players set esc_time_left game 60
bossbar set minecraft:stolen value 60
bossbar set minecraft:stolen max 60
bossbar set minecraft:stolen players @a
bossbar set minecraft:stolen name {"text":"Time Left: 60s","color":"red"}

tag @e[team=2Thief,sort=random,limit=1] add the_chosen_one

execute at @e[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_opening,sort=nearest,limit=1] run function game:ingame/doors/open_door
execute at @e[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_opening,sort=furthest,limit=1] run function game:ingame/doors/open_door
execute at @e[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_opening,sort=random,limit=1] run function game:ingame/doors/open_door
execute at @e[tag=the_chosen_one] as @e[type=minecraft:area_effect_cloud,tag=exit_door,tag=!shp_opening,sort=random,limit=1] run function game:ingame/doors/open_door

tellraw @a ""

execute as @a unless entity @s[team=!2Thief,team=!3Dead] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 6 1
execute as @a unless entity @s[team=!2Thief,team=!3Dead] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 6 1
execute as @a unless entity @s[team=!2Thief,team=!3Dead] run tellraw @s [{"text":"-> ","color":"white"},{"text":"[","color":"red"},{"text":"Radio","color":"dark_red"},{"text":"] ","color":"red"},{"text":"<","color":"white"},{"text":"Thief ","color":"dark_red"},{"selector":"@e[type=armor_stand,tag=shp_driver,limit=1]","color":"red"},{"text":"> I've hacked the Museum's systems and ","color":"white"},{"text":"opened some of the emergency doors","color":"yellow"},{"text":".","color":"white"}]

execute as @a unless entity @s[team=!1Guard,team=!9Spectator] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 6 1
execute as @a unless entity @s[team=!1Guard,team=!9Spectator] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 6 2
execute as @a unless entity @s[team=!1Guard,team=!9Spectator] run tellraw @s [{"text":"-> ","color":"white"},{"text":"[","color":"aqua"},{"text":"Security","color":"dark_aqua"},{"text":"] ","color":"aqua"},{"text":"Emergency exit doors triggered. The Museum will enter emergency lockdown in ","color":"white"},{"text":"60 seconds","color":"yellow"},{"text":".","color":"white"}]
execute as @a unless entity @s[team=!1Guard,team=!9Spectator] run tellraw @s ""

schedule function game:ingame/escape_mode/private/message0 2s replace

tag @a[tag=the_chosen_one] remove the_chosen_one

schedule function ai:doors/open 1s

schedule function game:ingame/escape_mode/timer 1s
