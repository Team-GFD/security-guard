# Author: InternetAlien
# Version: 1.15.2

item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:'{"text":"Baton","italic":false}'},HideFlags:6,Unbreakable:1b,tag:["killme"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1961038754,623855346,-2106300729,-926576269],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1,Operation:0,UUID:[I;-369552891,-1606335085,-1081759182,-411013321],Slot:"mainhand"}]} 1
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode","color":"gray","italic":false}']},tag:["killme"],CustomModelData:1} 1

function game:ingame/map/reset

item replace entity @s armor.head with minecraft:leather_helmet{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute as @s at @e[type=area_effect_cloud,tag=guard_spawn,limit=1] rotated as @s run tp ~ ~ ~

