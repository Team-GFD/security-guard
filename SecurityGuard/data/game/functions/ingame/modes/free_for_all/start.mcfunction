# Author: InternetAlien
# Version: 1.15.2

execute as @a[team=Thief] run function game:ingame/modes/free_for_all/setup_thief
execute as @a[team=Guard] run function game:ingame/modes/free_for_all/setup_guard
tag @a[team=Spectator] add camera_mode

scoreboard players operation required game = max game
scoreboard players operation stolen game = required game
execute store result bossbar minecraft:stolen max run scoreboard players get required game
execute store result bossbar minecraft:stolen value run scoreboard players get required game
bossbar set minecraft:stolen players @a[team=Thief]
bossbar set minecraft:stolen visible true
bossbar set minecraft:stolen name [{"text":"Artifacts Left (","color":"red"},{"score":{"name":"stolen","objective":"game"}},{"text":"/"},{"score":{"name":"required","objective":"game"}},{"text":")"}]