# Author: InternetAlien
# Version: 1.15.2

particle minecraft:smoke ~ ~1 ~ 0.5 0 0.5 0.1 100 normal

execute as @a[team=1Guard] at @s run tag @e[type=area_effect_cloud,tag=room,sort=nearest,limit=1] add guarded

execute at @s run tag @e[distance=20..,sort=random,tag=room,tag=!guarded,type=area_effect_cloud,limit=1] add tp
tag @e[type=area_effect_cloud,tag=guarded] remove guarded

execute at @s unless entity @e[type=area_effect_cloud,tag=tp] run tag @e[distance=20..,sort=random,tag=room,type=area_effect_cloud,limit=1] add tp

execute as @s[type=player] at @e[tag=tp,limit=1] rotated as @s run tp ~ ~ ~
execute as @s[tag=AI] at @e[tag=tp,limit=1] rotated as @s run tp ~ ~-50 ~
execute at @e[tag=tp] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[tag=tp] run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal
tag @e[tag=tp] remove tp