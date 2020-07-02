# Author: InternetAlien
# Version: 1.15.2

tag @s remove in_cam
tag @s remove camera_mode

effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance
effect clear @s minecraft:weakness
effect clear @s minecraft:levitation
effect clear @s minecraft:blindness

clear @s

execute at @e[type=minecraft:armor_stand,tag=player_holder] if score @s player_id = @e[type=minecraft:armor_stand,tag=player_holder,sort=nearest,limit=1] player_id as @e[type=minecraft:armor_stand,limit=1,sort=nearest] run tag @s add tp
tp @s @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=tp]
kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=tp]

replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode.","color":"gray","italic":true}']},tag:["killme"],CustomModelData:1} 1