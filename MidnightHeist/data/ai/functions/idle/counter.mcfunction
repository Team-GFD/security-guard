# Author: Denniss
# Version: 1.17+
# called from ai:main

tag @s add AI_idle
scoreboard players add @s AI_idle 1
execute if score @s AI_idle matches 60.. if score state game matches 1 positioned ~ ~50 ~ run function ai:target/new_target
execute if score @s AI_idle matches 70.. positioned ~ ~50 ~ run function ai:idle/teleport
