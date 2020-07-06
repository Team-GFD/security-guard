# Author: Denniss
# Version: 1.16.1
# @s = zombified piglin without villager
# called from ai:main

# kill AI entities with same id as killed AI villager
tellraw @a [{"selector":"@s","hoverEvent":{"action":"show_text","contents":""}},{"text":" was slain by ","color":"white"},{"selector":"@p[scores={AI_killed=1..}]"}]
execute as @e[type=creeper] if score @s AI = @e[tag=AI_pathfind,distance=..2,sort=nearest,limit=1] AI run kill @s
kill @s

scoreboard players reset @a AI_killed