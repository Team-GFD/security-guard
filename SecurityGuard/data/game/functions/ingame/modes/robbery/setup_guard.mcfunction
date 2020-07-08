# Author: InternetAlien
# Version: 1.15.2

replaceitem entity @s hotbar.0 minecraft:wooden_sword{display:{Name:'{"text":"Baton","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1.0,Operation:0,UUID:[I;-1857378557,398738781,-1303061729,819328413]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.0,Operation:0,UUID:[I;-1322982516,2140619875,-1800378010,-399262148]}],tag:["killme"],HideFlags:2} 1
replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode","color":"gray"}']},tag:["killme"],CustomModelData:1} 1
replaceitem entity @s hotbar.7 minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1

tag @s add lower

replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute as @s at @e[type=area_effect_cloud,tag=guard_spawn,limit=1] rotated as @s run tp ~ ~ ~

