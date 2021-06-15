
# Compute dim_lo & dim_hi
scoreboard players operation dim_lo rayData = boxAY rayData
scoreboard players operation dim_hi rayData = boxBY rayData

scoreboard players operation dim_lo rayData -= @s originVectorY
scoreboard players operation dim_hi rayData -= @s originVectorY

# Maintain decimal accuracy
scoreboard players operation dim_lo rayData *= #scale rayData
scoreboard players operation dim_hi rayData *= #scale rayData

scoreboard players operation dim_lo rayData /= @s lookVectorY
scoreboard players operation dim_hi rayData /= @s lookVectorY

execute if score dim_lo rayData > dim_hi rayData run scoreboard players operation dim_lo rayData >< dim_hi rayData

execute if score dim_hi rayData < lo rayData run scoreboard players set aabb_exit rayData 1
execute if score dim_lo rayData > hi rayData run scoreboard players set aabb_exit rayData 1

execute if score dim_lo rayData > lo rayData run scoreboard players operation lo rayData = dim_lo rayData
execute if score dim_hi rayData < hi rayData run scoreboard players operation hi rayData = dim_hi rayData