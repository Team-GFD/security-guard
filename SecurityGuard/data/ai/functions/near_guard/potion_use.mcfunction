# Author: Denniss
# Version: 1.16.1

tag @e[tag=AI,type=minecraft:villager,limit=1,sort=nearest,tag=!potion_used] add potion_used
summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Duration:300,Id:1b},{Duration:300,Id:14b}]}}}
effect give @s speed 15 0
