# Author: SirSheepe
# Version: 1.16+

tp @a[tag=viewer,scores={menu_rclick=1..}] -98.5 127.0 14.5 0 0
execute as @a[tag=viewer,scores={menu_rclick=1..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7
execute as @a[tag=viewer,scores={menu_rclick=1..}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~