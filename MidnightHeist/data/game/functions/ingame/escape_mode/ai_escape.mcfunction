# Author: SirSheepe
# Version: 1.16+

execute at @e[tag=AI_pathfind] if score @e[tag=AI_pathfind,distance=..1,sort=nearest,limit=1] AI = @s AI as @e[tag=AI_pathfind,distance=..1,sort=nearest,limit=1] run function ai:doors/escaped

tellraw @a [{"text":"[!] ","color":"yellow"},{"selector":"@e[tag=shp_escaped]"},{"text":" has escaped!","color":"white"}]

tag @e[tag=shp_escaped] add piglin_escapee
tag @e[tag=shp_escaped] remove shp_escaped

team join 4Escaped @s
scoreboard players add thieves_escaped game 1
scoreboard players operation artifacts_escaped game += @s stolen

tp @s -16 120.0 -123.0 90.0 0.0
effect clear @s
