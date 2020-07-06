# Author: InternetAlien
# Version: 1.15.2

tag @e[type=area_effect_cloud,tag=thief_spawn,limit=1,sort=random] add spawned

execute as @a[team=Thief] run function game:ingame/modes/robbery/setup_thief
execute as @a[team=Guard] run function game:ingame/modes/robbery/setup_guard
tag @a[team=Spectator] add camera_mode

execute if score total AI matches 1.. run function ai:start

tag @e[type=area_effect_cloud,tag=thief_spawn,tag=spawned] remove spawned

bossbar set minecraft:stolen visible true
bossbar set minecraft:stolen players @a[team=Thief]
execute store result bossbar minecraft:stolen max run scoreboard players get required game
bossbar set minecraft:stolen value 0
bossbar set minecraft:stolen name [{"text":"Artifacts Stolen (0/","color":"red"},{"score":{"name":"required","objective":"game"}},{"text":")"}]