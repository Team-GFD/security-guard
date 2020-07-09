# Author: Internet
# Version: 1.15.2

execute as @a[tag=!new] run function game:join

execute if score state game matches 0 as @a[tag=inGame] run function game:lobby/reset_player
execute if score state game matches 1 as @a unless score @s game_id matches 1 run function game:ingame/reset_player

execute if score state game matches 0 run function game:lobby/main

execute if score state game matches 1..3 unless score state game matches 2 run function game:ingame/global_main
execute if score state game matches 2 run function game:ingame/global_reset

kill @e[type=item,nbt={Item:{tag:{tag:["killme"]}}}]
