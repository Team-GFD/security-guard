# Author: InternetAlien
# Version: 1.16.1

scoreboard players set #inv_control game 0
execute store success score #inv_control game run clear @s orange_dye 0
execute as @s[tag=!camera_mode,team=!4Escaped] if score #inv_control game matches 0 run function game:ingame/map/reset

scoreboard players set #inv_control game 0
execute store success score #inv_control game run clear @s wooden_sword 0
execute as @s[tag=!camera_mode,team=1Guard] if score #inv_control game matches 0 run replaceitem entity @s hotbar.0 minecraft:wooden_sword{display:{Name:'{"text":"Baton","italic":false}'},HideFlags:4,Unbreakable:1b,tag:["killme"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1961038754,623855346,-2106300729,-926576269],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1,Operation:0,UUID:[I;-369552891,-1606335085,-1081759182,-411013321],Slot:"mainhand"}]} 1

scoreboard players set #inv_control game 0
execute store success score #inv_control game run clear @s carrot_on_a_stick 0
execute as @s[tag=!camera_mode] unless entity @s[team=!1Guard,team=!4Escaped] if score #inv_control game matches 0 run replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode.","color":"gray","italic":false}']},tag:["killme"],CustomModelData:1} 1
