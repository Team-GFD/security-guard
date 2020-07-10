# Author: InternetAlien
# Version: 1.16.1

time set midnight

title @a subtitle ""

tag @e[type=area_effect_cloud,tag=thief_spawn,limit=1,sort=random] add spawned

execute as @a[team=2Thief] at @s run function game:ingame/modes/robbery/setup_thief
execute as @a[team=1Guard] at @s run function game:ingame/modes/robbery/setup_guard
tag @a[team=9Spectator] add camera_mode

scoreboard players set thieves_escaped game 0

execute if score total AI matches 1.. run function ai:start

tag @e[type=area_effect_cloud,tag=thief_spawn,tag=spawned] remove spawned

bossbar set minecraft:stolen visible true
bossbar set minecraft:stolen players @a[team=!1Guard]
execute store result bossbar minecraft:stolen max run scoreboard players get required game
bossbar set minecraft:stolen value 0
bossbar set minecraft:stolen name [{"text":"Artifacts Stolen (0/","color":"red"},{"score":{"name":"required","objective":"game"}},{"text":")"}]

scoreboard players set thieves_left game 0
execute as @a[team=2Thief] run scoreboard players add thieves_left game 1

scoreboard players operation initial_thieves game = thieves_left game
scoreboard players operation initial_thieves game += total AI

tag @a[team=1Guard] add bossbar_thieves
tag @a[team=9Spectator] add bossbar_thieves

bossbar set minecraft:thieves visible true
bossbar set minecraft:thieves players @a[tag=bossbar_thieves]
execute store result bossbar minecraft:thieves max run scoreboard players get initial_thieves game
execute store result bossbar minecraft:thieves value run scoreboard players get thieves_left game
bossbar set minecraft:thieves name [{"text":"Thieves Remaining (","color":"aqua"},{"score":{"name":"thieves_left","objective":"game"}},{"text":"/"},{"score":{"name":"initial_thieves","objective":"game"}},{"text":")"}]

tag @a[tag=bossbar_thieves] remove bossbar_thieves

execute if score #doors menu_id matches 1 run function game:ingame/doors/remove_doors
execute if score #doors menu_id matches 1 run function game:ingame/doors/place_doors