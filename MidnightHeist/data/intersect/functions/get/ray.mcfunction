
execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] ^ ^ ^1

execute store result score @s lookVectorX run data get entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[0] 1000
execute store result score @s lookVectorY run data get entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[1] 1000
execute store result score @s lookVectorZ run data get entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[2] 1000

execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] ^ ^ ^

execute store result score @s originVectorX run data get entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[0] 1000
execute store result score @s originVectorY run data get entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[1] 1000
execute store result score @s originVectorZ run data get entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[2] 1000

scoreboard players operation @s lookVectorX -= @s originVectorX
scoreboard players operation @s lookVectorY -= @s originVectorY
scoreboard players operation @s lookVectorZ -= @s originVectorZ
