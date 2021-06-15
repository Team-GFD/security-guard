# Author: SirSheepe
# Version: 1.16+

tellraw @a [{"text":"[!] ","color":"yellow"},{"selector":"@s"},{"text":" has escaped!","color":"white"}]

team join 4Escaped @s
scoreboard players add thieves_escaped game 1
tp @s -16 120.0 -123.0 90.0 0.0
clear @s
item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enter Camera","italic":false}',Lore:['{"text":"Click to enter camera mode","color":"gray","italic":false}']},tag:["killme"],CustomModelData:1} 1
effect clear @s
effect give @s instant_health 1 10 true

execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1