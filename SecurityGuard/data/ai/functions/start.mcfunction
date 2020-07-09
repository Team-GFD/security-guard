# Author: Denniss
# Version: 1.16.1
# called from game:ingame/modes/robbery/start

# reset previous AI scores
execute at @e[tag=AI_nbt] run kill @e[tag=AI_score,distance=..5]

# spawn cat under each guard
execute as @a[team=1Guard] at @s positioned ~ ~-50 ~ run function ai:summon_cat 

# spawn AI entities
scoreboard players operation number AI = total AI
function ai:spawn/spawn

# initial AI targets reset, go to nearest target instead
schedule function ai:spawn/reset_target 10s
