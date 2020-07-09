# Author: InternetAlien
# Version: 1.15.2

tag @e[type=area_effect_cloud,tag=thief_spawn,limit=1,sort=random] add spawned

execute as @a[team=2Thief] at @s run function game:ingame/modes/robbery/setup_thief
execute as @a[team=1Guard] at @s run function game:ingame/modes/robbery/setup_guard
tag @a[team=9Spectator] add camera_mode

execute if score total AI matches 1.. run function ai:start

tag @e[type=area_effect_cloud,tag=thief_spawn,tag=spawned] remove spawned

bossbar set minecraft:stolen visible true
bossbar set minecraft:stolen players @a[team=2Thief]
execute store result bossbar minecraft:stolen max run scoreboard players get required game
bossbar set minecraft:stolen value 0
bossbar set minecraft:stolen name [{"text":"Artifacts Stolen (0/","color":"red"},{"score":{"name":"required","objective":"game"}},{"text":")"}]

execute if score #doors menu_id matches 1 run function game:ingame/doors/remove_doors
execute if score #doors menu_id matches 1 run function game:ingame/doors/place_doors