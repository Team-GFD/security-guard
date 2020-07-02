# Author: InternetAlien
# Version: 1.15.2

execute positioned ~ ~-47 ~ run function ai:capture_points/capturing

execute align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:end_rod ~ ~ ~ 0.25 0 0.25 0.01 1 normal

xp set @s 20 levels
xp add @s 1 points
xp set @s 0 levels

execute if score @s capture_time matches 5 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 0.5
execute if score @s capture_time matches 15 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 0.5
execute if score @s capture_time matches 25 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 0.5
execute if score @s capture_time matches 35 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 0.5
execute if score @s capture_time matches 45 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 0.5
execute if score @s capture_time matches 55 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 0.5

execute if score @s capture_time matches 8 run playsound minecraft:block.chest.locked master @a ~ ~ ~ 0.5 0.75
execute if score @s capture_time matches 20 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
execute if score @s capture_time matches 20 align xyz positioned ~0.5 ~1 ~0.5 run particle minecraft:block minecraft:glass ~ ~ ~ 0.25 0 0.25 0.2 20 normal
execute if score @s capture_time matches 40 run playsound minecraft:block.anvil.break master @a ~ ~ ~ 1 2
execute if score @s capture_time matches 45 run playsound minecraft:block.tripwire.detach master @a ~ ~ ~ 1 2
execute if score @s capture_time matches 55 run playsound minecraft:entity.armorstand.break master @a ~ ~ ~ 1 2

execute if score @s capture_time matches 61.. run function game:ingame/capture_points/capture

scoreboard players add @s capture_time 1

