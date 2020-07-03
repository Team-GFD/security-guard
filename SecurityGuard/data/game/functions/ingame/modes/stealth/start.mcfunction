# Author: InternetAlien
# Version: 1.15.2

execute as @a[team=Thief] run function game:ingame/mode/stealth/setup_thief
execute as @a[team=Guard] run function game:ingame/mode/stealth/setup_guard
tag @a[team=Spectator] add camera_mode

bossbar set minecraft:stolen visible true
bossbar set minecraft:stolen players @a[team=Thief]
execute store result bossbar minecraft:stolen max run scoreboard players get required game
bossbar set minecraft:stolen value 0
