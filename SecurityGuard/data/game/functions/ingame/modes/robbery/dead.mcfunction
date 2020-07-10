# Author: InternetAlien
# Version: 1.16.1

execute as @s[tag=!camera_mode] if score @s used_camera matches 1.. run tag @s add camera_mode

function game:ingame/inventory_control
