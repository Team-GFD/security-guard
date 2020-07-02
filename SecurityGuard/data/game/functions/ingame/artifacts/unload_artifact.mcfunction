# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=large,tag=!none] positioned ~ ~5 ~ positioned ^ ^ ^4 as @e[tag=artifact_item,distance=..8,sort=nearest,limit=20] run tag @s add kill
execute as @s[tag=!small,tag=!large,tag=!none] positioned ~ ~3 ~ positioned ^ ^ ^3 as @e[tag=artifact_item,distance=..4,sort=nearest,limit=10] run tag @s add kill
execute as @s[tag=small,tag=!none] positioned ~ ~2 ~ positioned ^ ^ ^2 as @e[tag=artifact_item,distance=..2,sort=nearest,limit=8] run tag @s add kill

execute as @e[tag=artifact_item,tag=kill] at @s run tp @s ~ 10000 ~
schedule function game:ingame/artifacts/kill_artifact 2t replace

clone ~ 7 ~ ~ 7 ~ ~ ~-1 ~ replace normal
setblock ~ ~ ~ minecraft:redstone_block
setblock ~ ~ ~ minecraft:black_concrete_powder
setblock ~ ~-1 ~ minecraft:barrier
