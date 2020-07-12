# Author: Denniss
# Version: 1.16.1
# called from ai:main

scoreboard players add @s AI_idle 1
execute if score @s AI_idle matches 40.. run function ai:target/new_target