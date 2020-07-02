# Author: Denniss
# Version: 1.15.2

execute at @e[type=minecraft:enderman,tag=!near_guard,tag=AI] unless entity @e[type=endermite,distance=..5] run function ai:force_detect/spawn

execute if entity @e[type=endermite] run schedule function ai:force_detect/check 5s
