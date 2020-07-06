
scoreboard players operation out_x rayData = @s lookVectorX
scoreboard players operation out_x rayData *= @s rayDistance
scoreboard players operation out_x rayData /= #scale rayData
scoreboard players operation out_x rayData += @s originVectorX

scoreboard players operation out_y rayData = @s lookVectorY
scoreboard players operation out_y rayData *= @s rayDistance
scoreboard players operation out_y rayData /= #scale rayData
scoreboard players operation out_y rayData += @s originVectorY

scoreboard players operation out_z rayData = @s lookVectorZ
scoreboard players operation out_z rayData *= @s rayDistance
scoreboard players operation out_z rayData /= #scale rayData
scoreboard players operation out_z rayData += @s originVectorZ