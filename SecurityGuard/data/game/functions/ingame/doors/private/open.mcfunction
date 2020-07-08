# Author: SirSheepe
# Version: 1.16+

tag @s add current_door

summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset"]}
summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:4}}],Tags:["shp_right_door","shp_door","shp_unset"]}

execute at @s as @e[type=minecraft:armor_stand,sort=nearest,limit=2] run data modify entity @s Rotation set from entity @e[type=minecraft:armor_stand,tag=current_door,limit=1] Rotation

execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=shp_left_door] at @s run tp @s ^-0.5 ^ ^
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=shp_right_door] at @s run tp @s ^0.5 ^ ^

kill @s