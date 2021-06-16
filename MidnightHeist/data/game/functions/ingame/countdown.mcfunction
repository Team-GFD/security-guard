# Author: InternetAlien
# Version: 1.15.2
# Runs 1Hz during countdown

execute if score cooldown game matches 0..4 at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guard_door] run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1 0.75

execute if score cooldown game matches ..5 as @a at @s run playsound minecraft:block.comparator.click master @s ~ ~ ~ 100 1

title @a times 0 25 15
execute if score cooldown game matches 7 run title @a title {"text":"The Alarm was Tripped!","color":"red"}

execute if score cooldown game matches 1..5 run title @a title [{"text":"Starting","color":"dark_aqua","bold":true}]
execute if score cooldown game matches 1..5 run title @a[team=!1Guard] subtitle [{"text":"Guards alerted in: ","color":"aqua","bold":true},{"score":{"name":"cooldown","objective":"game"},"color":"dark_aqua"}]
execute if score cooldown game matches 1..5 run title @a[team=1Guard] subtitle [{"text":"Catch the Thieves in: ","color":"aqua","bold":true},{"score":{"name":"cooldown","objective":"game"},"color":"dark_aqua"}]

execute if score cooldown game matches 0 run title @a title [{"text":"Start","color":"dark_aqua","bold":true}]
execute if score cooldown game matches 0 run title @a subtitle [{"text":""}]

execute if score cooldown game matches 0 as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guard_door] at @s run fill ~1 ~ ~ ~-1 ~-3 ~ air replace minecraft:end_stone_brick_wall

execute if score cooldown game matches 7 run tellraw @a[team=2Thief] ""
execute if score cooldown game matches 7 run tellraw @a[team=2Thief] [{"text":"-> ","color":"white"},{"text":"[","color":"red"},{"text":"Radio","color":"dark_red"},{"text":"] ","color":"red"},{"text":"<","color":"white"},{"text":"Thief ","color":"dark_red"},{"selector":"@e[type=armor_stand,tag=shp_driver,limit=1]","color":"red"},{"text":"> Shoot, you tripped the alarm! You only have around ","color":"white"},{"text":"6\u00bd minutes","color":"red"},{"text":" until the police arrive.","color":"white"}]

scoreboard players remove cooldown game 1
