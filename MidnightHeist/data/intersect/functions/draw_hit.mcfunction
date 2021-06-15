
execute store result entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[0] double 0.001 run scoreboard players get out_x rayData
execute store result entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[1] double 0.001 run scoreboard players get out_y rayData
execute store result entity @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] Pos[2] double 0.001 run scoreboard players get out_z rayData

execute at @e[type=minecraft:area_effect_cloud,tag=look_vector,limit=1] run particle minecraft:dust 1 0 0 0.2 ~ ~ ~ 0 0 0 0 1 force