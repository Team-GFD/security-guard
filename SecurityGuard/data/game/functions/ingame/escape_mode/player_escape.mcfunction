# Author: SirSheepe
# Version: 1.16+

tellraw @a [{"text":"[!] ","color":"yellow"},{"selector":"@s"},{"text":" has escaped!","color":"white"}]

team join 4Escaped @s
scoreboard players add thieves_escaped game 1
tp @s -16 120.0 -123.0 90.0 0.0
clear @s
effect clear @s

execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1