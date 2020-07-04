# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=!camera_mode] if score @s used_camera matches 1.. run tag @s add camera_mode

effect give @s minecraft:resistance 1 10 true

replaceitem entity @s[tag=!camera_mode] hotbar.0 minecraft:wooden_sword{display:{Name:'{"text":"Baton","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:10.0,Operation:0,UUIDLeast:-8973862,UUIDMost:9603834,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1.0,Operation:0,UUIDLeast:1927763,UUIDMost:3760750,Slot:"mainhand"}],tag:["killme"]} 1
replaceitem entity @s[tag=!camera_mode] hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode.","color":"gray","italic":true}']},tag:["killme"],CustomModelData:1} 1

replaceitem entity @s[tag=!camera_mode] armor.head minecraft:leather_helmet{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s[tag=!camera_mode] armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s[tag=!camera_mode] armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s[tag=!camera_mode] armor.feet minecraft:leather_boots{display:{Name:'{"text":"Guard Armor","italic":false}',color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
