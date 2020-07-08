# Author: SirSheepe
# Version: 1.16+

fill ^-1 ^ ^1 ^-2 ^2 ^1 minecraft:end_stone_brick_wall
fill ^-1 ^-1 ^1 ^-2 ^-1 ^1 minecraft:light_gray_concrete

execute store result score #door_rotation game run data get entity @s Rotation[0]

execute if score #door_rotation game matches 0 run say south
execute if score #door_rotation game matches 90 run say west
execute if score #door_rotation game matches -90 run say east
execute if score #door_rotation game matches -180 run say north