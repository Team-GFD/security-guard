# Author: Denniss
# Version: 1.16.1

tellraw @a [{"selector":"@s","hoverEvent":{"action":"show_text","contents":""}},{"text":" was slain by ","color":"white"},{"selector":"@p[scores={AI_killed=1..}]"}]
kill @s
kill @e[type=creeper,tag=AI,limit=1,sort=nearest]

scoreboard players reset @a AI_killed