# Author: InternetAlien
# Version: 1.15.2

execute as @a[team=2Thief] run function game:ingame/modes/stealth/setup_thief
execute as @a[team=1Guard] run function game:ingame/modes/stealth/setup_guard
tag @a[team=9Spectator] add camera_mode

bossbar set minecraft:stolen visible true
bossbar set minecraft:stolen players @a[team=2Thief]
execute store result bossbar minecraft:stolen max run scoreboard players get required game
bossbar set minecraft:stolen value 0
