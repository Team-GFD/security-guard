# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=!camera_mode] if score @s used_camera matches 1.. run tag @s add camera_mode

effect give @s minecraft:resistance 1 10 true

replaceitem entity @s[tag=!camera_mode] hotbar.0 minecraft:wooden_sword{display:{Name:'{"text":"Baton","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.0,Operation:0,UUID:[I;-1857378557,398738781,-1303061729,819328413]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.0,Operation:0,UUID:[I;-1322982516,2140619875,-1800378010,-399262148]}],tag:["killme"]} 1
replaceitem entity @s[tag=!camera_mode] hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode.","color":"gray","italic":true}']},tag:["killme"],CustomModelData:1} 1

replaceitem entity @s[tag=!camera_mode] armor.head minecraft:leather_helmet{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s[tag=!camera_mode] armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s[tag=!camera_mode] armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s[tag=!camera_mode] armor.feet minecraft:leather_boots{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
