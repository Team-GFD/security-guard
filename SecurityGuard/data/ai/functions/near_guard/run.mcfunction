# Author: Denniss
# Version: 1.15.2

summon minecraft:creeper ~ ~ ~ {Tags:["AI","AI_pathfind"],Team:"AI",Silent:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.3f}]}
kill @s

schedule function ai:near_guard/escape_check 2s
