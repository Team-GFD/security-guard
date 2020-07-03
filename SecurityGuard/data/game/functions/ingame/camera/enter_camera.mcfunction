# Author: InternetAlien
# Version: 1.15.2

clear @s

title @s times 0 30 20
title @s title [{"text":""}]

team join Dead @s[team=Thief]

title @s[team=Guard] subtitle [{"text":"Sneak to Leave Camera Mode.","color":"dark_aqua","bold":true}]
title @s[team=!Guard] subtitle [{"text":"Scroll to Change Camera View.","color":"dark_aqua","bold":true}]

execute at @s[team=Guard] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,Team:"Guard",Tags:["player_holder"],Pose:{Head:[50f,0f,0f],LeftLeg:[353f,0f,0f],RightLeg:[8f,0f,0f],RightArm:[315f,316f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2081988},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:2081988},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}],CustomName:'[{"text":"Guard ","color":"dark_aqua","italic":false},{"text":"In Camera","color":"aqua","italic":false}]'}
execute at @s[team=Guard] as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=player_holder] rotated as @a[team=Guard,limit=1,sort=nearest,distance=..1] run tp ~ ~ ~
execute at @s[team=Guard] run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..1,tag=player_holder] player_id = @s player_id

tag @s add in_cam