# Author: Denniss
# Version: 1.17+
# @s = zombified piglin without near_guard tag and within 6 blocks of a guard
# called from ai:main

tag @s add near_guard
execute if entity @e[tag=AI_villager,limit=1,sort=nearest,tag=!potion_used] unless entity @e[nbt={ActiveEffects:[{Id:14b}]},distance=..4] run function ai:near_guard/potion_use

schedule function ai:near_guard/escaped 2s
