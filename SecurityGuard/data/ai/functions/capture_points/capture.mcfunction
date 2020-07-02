# Author: Denniss
# Version: 1.15.2

execute positioned ~ ~-47 ~ run kill @e[type=minecraft:endermite,distance=..2]
execute as @e[tag=artifact,sort=nearest] if entity @s[tag=shortcut] at @s positioned ~ ~-50 ~ run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:redstone_wire replace minecraft:activator_rail
scoreboard players set @s capture_time 0

