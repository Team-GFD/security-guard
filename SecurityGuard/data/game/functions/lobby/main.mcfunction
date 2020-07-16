# Author: InternetAlien
# Version: 1.15.2

execute as @a[gamemode=adventure] run function game:lobby/player

execute if score #starting game matches 0 as @e[type=minecraft:area_effect_cloud,tag=join_marker] at @s run function game:lobby/teams/check