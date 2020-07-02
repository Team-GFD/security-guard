# Author: Denniss
# Version: 1.15.2

execute as @e[type=minecraft:endermite,distance=..2,sort=nearest,limit=1] run kill @s
execute as @e[type=minecraft:enderman,distance=..3,sort=nearest,limit=1] run effect give @s[tag=AI] minecraft:slowness 1 10
