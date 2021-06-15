# Author: Denniss
# Version: 1.17+
# @s = zombified piglin without villager
# called from ai:main

# kill AI entities with same id as killed AI villager
execute if entity @p[team=1Guard,scores={AI_killed=1..}] run tellraw @a [{"selector":"@s","hoverEvent":{"action":"show_text","contents":""}},{"text":" was captured by ","color":"white"},{"selector":"@p[team=1Guard,scores={AI_killed=1..}]"}]
execute unless entity @p[team=1Guard,scores={AI_killed=1..}] run tellraw @a [{"selector":"@s","hoverEvent":{"action":"show_text","contents":""}},{"text":" was captured","color":"white"}]

scoreboard players add @p[team=1Guard,scores={AI_killed=1..}] kills 1

function ai:keep_piglin

scoreboard players reset @a AI_killed
