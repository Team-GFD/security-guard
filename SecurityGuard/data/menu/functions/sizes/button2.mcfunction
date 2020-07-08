# Author: SirSheepe
# Version: 1.16+

execute store result score #x rayData run data get entity @s Pos[0] 1000
execute store result score #y rayData run data get entity @s Pos[1] 1000
execute store result score #z rayData run data get entity @s Pos[2] 1000

scoreboard players operation boxAX rayData = #x rayData
scoreboard players add boxAX rayData 1200
scoreboard players operation boxBX rayData = #x rayData
scoreboard players remove boxBX rayData 1200

scoreboard players operation boxAY rayData = #y rayData
scoreboard players add boxAY rayData 250
scoreboard players operation boxBY rayData = #y rayData
scoreboard players add boxBY rayData 750

scoreboard players operation boxAZ rayData = #z rayData
# This displays 0.501953125 blocks infront of it
scoreboard players remove boxAZ rayData 502
scoreboard players operation boxBZ rayData = boxAZ rayData

