# Author: Denniss
# Version: 1.16.1

scoreboard players operation #current AI = @s AI
execute as @e[type=zombified_piglin,tag=AI] at @e[type=creeper,tag=AI,limit=1,sort=nearest] if score @s AI = #current AI run tp @s ~ ~ ~
