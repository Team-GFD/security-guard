# Author: Denniss
# Version: 1.16.1

tag @s add near_guard
execute positioned ~ ~50 ~ if entity @e[tag=AI,type=minecraft:villager,limit=1,sort=nearest,tag=!potion_used] unless entity @e[nbt={ActiveEffects:[{Id:14b}]},distance=..4] run function ai:near_guard/potion_use

schedule function ai:near_guard/escaped 2s
