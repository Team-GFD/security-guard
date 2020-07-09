# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=!camera_mode] if score @s used_camera matches 1.. run tag @s add camera_mode

function game:ingame/inventory_control

effect give @s minecraft:resistance 1 10 true
