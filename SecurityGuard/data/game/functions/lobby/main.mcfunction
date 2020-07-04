# Author: InternetAlien
# Version: 1.15.2

effect give @a minecraft:saturation 2 1 true
effect give @a[gamemode=!creative] minecraft:resistance 2 10 true
effect give @a[gamemode=!creative] minecraft:weakness 2 10 true
effect give @a minecraft:instant_health 2 10 true

replaceitem entity @a[team=Thief] hotbar.8 minecraft:red_stained_glass_pane{display:{Name:'{"text":"Thief","color":"red","italic":false}'},tag:["killme"]} 1
replaceitem entity @a[team=Guard] hotbar.8 minecraft:cyan_stained_glass_pane{display:{Name:'{"text":"Guard","color":"dark_aqua","italic":false}'},tag:["killme"]} 1
replaceitem entity @a[team=Spectator] hotbar.8 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"Spectator","color":"dark_gray","italic":false}'},tag:["killme"]} 1

execute as @e[type=minecraft:area_effect_cloud,tag=join_marker] at @s run function game:lobby/teams/check
