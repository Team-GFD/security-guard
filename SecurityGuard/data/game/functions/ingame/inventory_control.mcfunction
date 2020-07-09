# Author: InternetAlien
# Version: 1.16.1

scoreboard players set #inv_control game 0
execute store success score #inv_control game run clear @s orange_dye 0
execute if score #inv_control game matches 0 run function game:ingame/map/reset

scoreboard players set #inv_control game 0
execute store success score #inv_control game run clear @s wooden_sword 0
execute as @s[tag=!camera_mode,team=1Guard] if score #inv_control game matches 0 run replaceitem entity @s hotbar.0 minecraft:wooden_sword{display:{Name:'{"text":"Baton","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.0,Operation:0,UUID:[I;-1857378557,398738781,-1303061729,819328413]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.0,Operation:0,UUID:[I;-1322982516,2140619875,-1800378010,-399262148]}],tag:["killme"]} 1

scoreboard players set #inv_control game 0
execute store success score #inv_control game run clear @s carrot_on_a_stick 0
execute as @s[tag=!camera_mode,team=1Guard] if score #inv_control game matches 0 run replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode.","color":"gray","italic":true}']},tag:["killme"],CustomModelData:1} 1
