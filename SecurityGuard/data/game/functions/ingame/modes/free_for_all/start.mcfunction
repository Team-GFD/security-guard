# Author: InternetAlien
# Version: 1.15.2

execute as @a[team=Thief] run function game:ingame/setup_thief
execute as @a[team=Guard] run function game:ingame/setup_guard
tag @a[team=Spectator] add camera_mode


scoreboard players operation require game = max game
scoreboard players operation stolen game = required game
execute store result bossbar minecraft:stolen max run scoreboard players get required game
execute store result bossbar minecraft:stolen value run scoreboard players get required game
