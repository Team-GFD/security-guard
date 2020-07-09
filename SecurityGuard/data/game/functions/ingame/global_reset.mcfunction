# Author: InternetAlien
# Version: 1.15.2

execute as @a[tag=camera_mode] run function game:ingame/camera/camera_mode

execute if score end_cooldown game matches 0 run tp @a @e[type=area_effect_cloud,tag=lobby,limit=1]
execute if score end_cooldown game matches 0 run function menu:load/lobby
execute if score end_cooldown game matches 0 as @e[type=minecraft:area_effect_cloud,tag=lobby,limit=1] at @s run particle minecraft:cloud ~ ~1 ~ 0.25 0.5 0.25 0.01 100 normal

execute if score end_cooldown game matches 0 run time set noon
execute if score end_cooldown game matches 0 run tag @a remove camera_mode
execute if score end_cooldown game matches 0 run tag @a remove in_cam
execute if score end_cooldown game matches 0 run clear @a
execute if score end_cooldown game matches 0 run effect clear @a

execute if score end_cooldown game matches 1 as @e[type=area_effect_cloud,tag=artifact,tag=captured] at @s run function game:ingame/artifacts/load_artifact
execute if score end_cooldown game matches 1 run tag @e[type=area_effect_cloud,tag=artifact,tag=captured] remove captured

execute if score end_cooldown game matches 1 run function ai:reset

execute if score end_cooldown game matches 0 run scoreboard players set state game 0

execute at @e[type=minecraft:area_effect_cloud,tag=lobby,limit=1,sort=nearest] run spawnpoint @a ~ ~ ~

function game:ingame/modes/robbery/reset

execute if score end_cooldown game matches 1.. run scoreboard players remove end_cooldown game 1