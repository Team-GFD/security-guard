# Author: SirSheepe
# Version: 1.16+

tag @s add current_door

execute store result score #door_rotation game run data get entity @s Rotation[0]

execute if score #door_rotation game matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset"],Rotation:[-180.0f,0.0f]}
execute if score #door_rotation game matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_right_door","shp_door","shp_unset"],Rotation:[-180.0f,0.0f]}
execute if score #door_rotation game matches 90 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset"],Rotation:[-90.0f,0.0f]}
execute if score #door_rotation game matches 90 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_right_door","shp_door","shp_unset"],Rotation:[-90.0f,0.0f]}
execute if score #door_rotation game matches -90 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset"],Rotation:[90.0f,0.0f]}
execute if score #door_rotation game matches -90 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_right_door","shp_door","shp_unset"],Rotation:[90.0f,0.0f]}
execute if score #door_rotation game matches -180 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset"],Rotation:[0.0f,0.0f]}
execute if score #door_rotation game matches -180 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_right_door","shp_door","shp_unset"],Rotation:[0.0f,0.0f]}

execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=shp_left_door] at @s run tp @s ^-0.5 ^ ^
execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=shp_right_door] at @s run tp @s ^0.5 ^ ^

tag @e[type=minecraft:armor_stand,sort=nearest,limit=2] remove shp_unset

kill @s