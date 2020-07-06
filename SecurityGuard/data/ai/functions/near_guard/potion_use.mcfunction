# Author: Denniss
# Version: 1.16.1
# @s = zombified piglin without potion_used tag and within 6 blocks of a guard
# called from ai:near_guard/run

tag @e[tag=AI,type=minecraft:villager,limit=1,sort=nearest,tag=!potion_used] add potion_used
summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Duration:300,Id:1b,ShowParticles:0b},{Duration:300,Id:14b,ShowParticles:0b}]}}}
effect give @s speed 15 0
