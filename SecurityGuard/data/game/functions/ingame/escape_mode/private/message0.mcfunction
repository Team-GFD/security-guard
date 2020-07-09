# Author: SirSheepe
# Version: 1.16+

execute as @a unless entity @s[team=!2Thief,team=!3Dead] run tellraw @s ""

execute as @a unless entity @s[team=!2Thief,team=!3Dead] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 4 0.8
execute as @a unless entity @s[team=!2Thief,team=!3Dead] run tellraw @s [{"text":"-> ","color":"white"},{"text":"[","color":"red"},{"text":"Radio","color":"dark_red"},{"text":"] ","color":"red"},{"text":"<","color":"white"},{"text":"Thief ","color":"dark_red"},{"selector":"@e[type=armor_stand,tag=shp_driver]","color":"red"},{"text":"> You've only got about ","color":"white"},{"text":"60s","color":"red"},{"text":" before the Museum goes into emergency lockdown! Get out of there!"}]

execute as @a unless entity @s[team=!2Thief,team=!3Dead] run tellraw @s ""
