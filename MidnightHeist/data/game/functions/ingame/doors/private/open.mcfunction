# Author: SirSheepe
# Version: 1.16+

tag @s add current_door

execute store result score #door_rotation game run data get entity @s Rotation[0]

execute if score #door_rotation game matches 0 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset","shp_open"],Rotation:[0.0f,0.0f]}
execute if score #door_rotation game matches 0 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:4}}],Tags:["shp_right_door","shp_door","shp_unset","shp_open"],Rotation:[0.0f,0.0f]}
execute if score #door_rotation game matches 90 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset","shp_open"],Rotation:[90.0f,0.0f]}
execute if score #door_rotation game matches 90 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:4}}],Tags:["shp_right_door","shp_door","shp_unset","shp_open"],Rotation:[90.0f,0.0f]}
execute if score #door_rotation game matches -90 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset","shp_open"],Rotation:[-90.0f,0.0f]}
execute if score #door_rotation game matches -90 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:4}}],Tags:["shp_right_door","shp_door","shp_unset","shp_open"],Rotation:[-90.0f,0.0f]}
execute if score #door_rotation game matches -180 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:3}}],Tags:["shp_left_door","shp_door","shp_unset","shp_open"],Rotation:[-180.0f,0.0f]}
execute if score #door_rotation game matches -180 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:4}}],Tags:["shp_right_door","shp_door","shp_unset","shp_open"],Rotation:[-180.0f,0.0f]}

#execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=shp_left_door] at @s run tp @s ^-0.8 ^ ^
#execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=shp_right_door] at @s run tp @s ^0.8 ^ ^

scoreboard players set @e[type=minecraft:armor_stand,sort=nearest,limit=2] door_tick 0

tag @e[type=minecraft:armor_stand,sort=nearest,limit=2] remove shp_unset

execute at @s as @a[distance=..20] at @s run playsound minecraft:item.bottle.fill_dragonbreath block @s ~ ~ ~ 4 0
schedule function game:ingame/doors/private/open_schedule 1t replace

kill @s