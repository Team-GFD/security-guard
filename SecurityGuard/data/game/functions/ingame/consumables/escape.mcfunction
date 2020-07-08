# Author: InternetAlien
# Version: 1.15.2

particle minecraft:smoke ~ ~1 ~ 0.5 0 0.5 0.1 100 normal

tag @e[sort=random,tag=room,type=area_effect_cloud,limit=1] add tp

execute as @s at @e[tag=tp,limit=1] rotated as @s run tp ~ ~ ~
execute at @e[tag=tp] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1
execute at @e[tag=tp] run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal
tag @e[tag=tp] remove tp