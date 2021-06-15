# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=large,tag=!none] positioned ~ ~5 ~ positioned ^ ^ ^4 as @e[tag=artifact_item,distance=..8,sort=nearest,limit=20] run kill @s
execute as @s[tag=!small,tag=!large,tag=!none] positioned ~ ~3 ~ positioned ^ ^ ^3 as @e[tag=artifact_item,distance=..4,sort=nearest,limit=10] run kill @s
execute as @s[tag=small,tag=!none] positioned ~ ~2 ~ positioned ^ ^ ^2 as @e[tag=artifact_item,distance=..2,sort=nearest,limit=2] run kill @s

clone ~ 5 ~ ~ 5 ~ ~ ~-1 ~ replace normal
setblock ~ ~ ~ minecraft:redstone_block
setblock ~ ~ ~ minecraft:gold_block
setblock ~ ~-1 ~ minecraft:barrier

setblock ~ 4 ~ minecraft:gold_block
