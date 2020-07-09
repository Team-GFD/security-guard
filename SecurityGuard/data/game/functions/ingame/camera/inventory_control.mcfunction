# Author: InternetAlien
# Version: 1.16.1

scoreboard players set #inv_cam game 0

execute store result score #inv_cam game run clear @s #game:camera_item 0

execute unless score #inv_cam game matches 9 run clear @s #game:camera_item

execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.0 minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.1 minecraft:orange_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.2 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.3 minecraft:green_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.4 minecraft:cyan_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.5 minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.6 minecraft:purple_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.7 minecraft:light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run replaceitem entity @s hotbar.8 minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
