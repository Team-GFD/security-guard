# Author: kruthers
# Version: 1.17+
# ran as every guard to summon a cat and give it the right ID
# @s = guard | called from ai:start

summon minecraft:cat ~ ~ ~ {Tags:["AI_guard","AI","AI_cat_selected"],Silent:1b,PersistenceRequired:1b,ActiveEffects:[{Id:11,Amplifier:100,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:empty"}
scoreboard players operation @e[tag=AI_guard,tag=AI_cat_selected,distance=..1,sort=nearest,limit=1] player_id = @s player_id
tag @e[tag=AI_guard,tag=AI_cat_selected] remove AI_cat_selected
