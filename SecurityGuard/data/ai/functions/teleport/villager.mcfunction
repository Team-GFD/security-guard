# Author: Denniss
# Version: 1.16.1

scoreboard players operation #current AI = @s AI
execute as @e[type=villager,tag=AI] if score @s AI = #current AI run tp @s ~ ~50 ~ ~ 0
