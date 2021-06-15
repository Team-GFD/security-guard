# Author: SirSheepe
# Version: 1.16+

fill ^-1 ^ ^1 ^-2 ^2 ^1 minecraft:end_stone_brick_wall
fill ^-1 ^-1 ^1 ^-2 ^-1 ^1 minecraft:light_gray_concrete
fill ^-1 ^ ^2 ^-2 ^2 ^2 minecraft:black_concrete

execute store result score #door_rotation game run data get entity @s Rotation[0]

execute if score #door_rotation game matches 0 run summon minecraft:armor_stand ^-1.5 ^ ^1 {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:2}}],Tags:["shp_closed_door","shp_door"],Rotation:[-180.0f,0.0f]}
execute if score #door_rotation game matches 90 run summon minecraft:armor_stand ^-1.5 ^ ^1 {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:2}}],Tags:["shp_closed_door","shp_door"],Rotation:[-90.0f,0.0f]}
execute if score #door_rotation game matches -90 run summon minecraft:armor_stand ^-1.5 ^ ^1 {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:2}}],Tags:["shp_closed_door","shp_door"],Rotation:[90.0f,0.0f]}
execute if score #door_rotation game matches -180 run summon minecraft:armor_stand ^-1.5 ^ ^1 {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:2}}],Tags:["shp_closed_door","shp_door"],Rotation:[0.0f,0.0f]}