# Author: SirSheepe
# Version: 1.16+

team join 4Escaped @s
scoreboard players add thieves_escaped game 1
function ai:doors/escaped
tp @s -16 120.0 -123.0 90.0 0.0
effect clear @s