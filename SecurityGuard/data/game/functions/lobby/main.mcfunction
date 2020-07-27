# Author: InternetAlien
# Version: 1.15.2

execute as @a[gamemode=adventure] run function game:lobby/player

execute if score #starting game matches 0 as @e[type=minecraft:area_effect_cloud,tag=join_marker] at @s run function game:lobby/teams/check

fill -43 125 -39 -40 125 -39 minecraft:oak_trapdoor[facing=south,half=bottom,open=true]
setblock -40 125 -40 oak_trapdoor[facing=west,half=bottom,open=true]
fill -40 144 -28 -40 132 -28 spruce_trapdoor[facing=north,half=top,open=false] replace spruce_trapdoor
fill -49 143 -30 -49 138 -32 oak_trapdoor[facing=east,half=top,open=true] replace oak_trapdoor
setblock -50 143 -31 spruce_fence_gate[facing=west,open=true]
setblock -50 138 -31 spruce_fence_gate[facing=west,open=true]
setblock -50 133 -31 oak_fence_gate[facing=west,open=true]
setblock -49 133 -32 oak_trapdoor[facing=east,open=true]