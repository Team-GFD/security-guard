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
setblock -50 133 -31 spruce_fence_gate[facing=west,open=true]
setblock -49 133 -32 oak_trapdoor[facing=east,open=true]
fill -100 134 35 -100 134 15 lever[facing=west,face=ceiling,powered=true] replace lever
fill -95 129 28 -95 128 28 spruce_trapdoor[facing=east,half=bottom,open=true]
fill -92 129 28 -92 128 28 spruce_trapdoor[facing=west,half=top,open=true]
fill -101 138 41 -101 134 41 spruce_trapdoor[facing=east,half=top,open=true] replace spruce_trapdoor
fill 1 134 104 1 134 124 lever[facing=west,face=ceiling,powered=true] replace lever
fill 0 138 130 0 134 130 spruce_trapdoor[facing=east,half=top,open=true] replace spruce_trapdoor
fill 6 129 108 6 127 108 oak_trapdoor[facing=west,half=bottom,open=true]
fill 9 129 108 9 127 108 oak_trapdoor[facing=east,half=bottom,open=true]

clear @a[gamemode=adventure] cactus

setblock 6 130 111 potted_cactus
setblock -95 130 22 potted_cactus
setblock -36 127 -41 potted_cactus