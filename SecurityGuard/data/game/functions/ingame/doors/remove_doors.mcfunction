# Author: SirSheepe
# Version: 1.16+

execute at @e[type=minecraft:area_effect_cloud,tag=exit_door] run fill ^-1 ^ ^1 ^-2 ^1 ^1 minecraft:light_gray_concrete_powder
execute at @e[type=minecraft:area_effect_cloud,tag=exit_door] run fill ^-1 ^2 ^1 ^-2 ^2 ^1 minecraft:quartz_block