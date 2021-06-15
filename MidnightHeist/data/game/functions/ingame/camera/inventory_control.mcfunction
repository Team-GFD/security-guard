# Author: InternetAlien
# Version: 1.17+

scoreboard players set #inv_cam game 0

execute store result score #inv_cam game run clear @s #game:camera_item 0

execute unless score #inv_cam game matches 9 run clear @s #game:camera_item

execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.0 with minecraft:red_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.1 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.2 with minecraft:yellow_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.3 with minecraft:green_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.4 with minecraft:cyan_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.5 with minecraft:blue_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.6 with minecraft:purple_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.7 with minecraft:light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
execute unless score #inv_cam game matches 9 run item replace entity @s hotbar.8 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":" "}'},tag:["killme"]} 1
