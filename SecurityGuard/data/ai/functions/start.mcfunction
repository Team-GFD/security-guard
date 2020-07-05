# Author: Denniss
# Version: 1.16.1

execute as @a[team=Guard] at @s positioned ~ ~-50 ~ run function ai:summon_cat 
scoreboard players operation number AI = total AI
execute if score total AI matches 1.. run function ai:spawn/spawn
schedule function ai:spawn/reset_target 10s
