# Author: InternetAlien
# Version: 1.15.2

function ai:capture_points/capture

execute align xyz positioned ~0.5 ~-0.5 ~0.5 as @e[tag=artifact,limit=1,sort=nearest,distance=..1] at @s run function game:ingame/artifacts/unload_artifact
execute align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=artifact,distance=..4] add captured

playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1

scoreboard players add stolen game 1
scoreboard players add @s stolen 1
execute store result bossbar minecraft:stolen value run scoreboard players get stolen game
bossbar set minecraft:stolen name [{"text":"Artifacts Stolen (","color":"red"},{"score":{"name":"stolen","objective":"game"}},{"text":"/"},{"score":{"name":"required","objective":"game"}},{"text":")"}]

xp set @s 0 points
xp set @s 0 levels

execute if score stolen game >= required game run function game:ingame/global_end