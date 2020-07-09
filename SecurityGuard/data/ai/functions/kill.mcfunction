# Author: Denniss
# Version: 1.16.1
# @s = zombified piglin without villager
# called from ai:main

# kill AI entities with same id as killed AI villager
execute if entity @p[team=1Guard,scores={AI_killed=1..}] run tellraw @a [{"selector":"@s","hoverEvent":{"action":"show_text","contents":""}},{"text":" was captured by ","color":"white"},{"selector":"@p[team=1Guard,scores={AI_killed=1..}]"}]
execute unless entity @p[team=1Guard,scores={AI_killed=1..}] run tellraw @a [{"selector":"@s","hoverEvent":{"action":"show_text","contents":""}},{"text":" was captured","color":"white"}]
execute as @e[type=creeper,tag=AI] if score @s AI = @e[tag=AI_pathfind,distance=..2,sort=nearest,limit=1] AI run kill @s
tag @s remove AI_pathfind
tag @s add AI_score
tp @s @e[tag=AI_nbt,limit=1]

scoreboard players reset @a AI_killed