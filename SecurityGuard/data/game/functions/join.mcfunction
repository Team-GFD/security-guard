# Author: InternetAlien
# Version: 1.15.2

function game:lobby/teams/join_spectator
execute store result score @s player_id run scoreboard players add highest_id player_id 1

execute if score state game matches 0 positioned as @e[type=area_effect_cloud,tag=lobby,limit=1] run tp ~ ~ ~
execute if score state game matches 1..2 run tag @s add camera_mode

tag @s add new