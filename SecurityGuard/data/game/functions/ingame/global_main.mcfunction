# Author: InternetAlien
# Version: 1.15.2

effect give @a minecraft:saturation 1 0 true

function game:ingame/modes/robbery/main

# execute as @e[type=minecraft:area_effect_cloud,tag=vent] at @s as @a[distance=..6,tag=!vent] run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.5 1
# execute as @e[type=minecraft:area_effect_cloud,tag=vent] at @s as @a[distance=..6,tag=!vent] run tag @s add vent
# execute as @e[type=minecraft:area_effect_cloud,tag=vent] at @s as @a[distance=6..10,tag=vent] run tag @s remove vent

execute if score total AI matches 1.. run function ai:main
