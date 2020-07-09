# Author: InternetAlien
# Version: 1.15.2

schedule clear game:ingame/global_end

clear @a[team=!9Spectator]
effect clear @a[team=!9Spectator]
team join 2Thief @a[team=3Dead]

xp set @a 0 points
xp set @a 0 levels

execute as @e[type=minecraft:armor_stand,tag=camera] at @s run function game:ingame/camera/enable
kill @e[type=minecraft:armor_stand,tag=player_holder]

scoreboard players reset * game_id

scoreboard players set initial_thieves game 0

tag @a remove inGame
tag @a remove lower
tag @a remove upper
tag @a remove update_map

bossbar set minecraft:stolen visible false
bossbar set minecraft:stolen value 0

bossbar set minecraft:thieves visible false

execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guard_door] at @s run tp @s ~ 104 ~
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guard_door] at @s run fill ~1 ~ ~ ~-1 ~2 ~ minecraft:end_stone_brick_wall

function game:ingame/doors/remove_doors

scoreboard players set end_cooldown game 70

scoreboard objectives setdisplay list stolen

team modify 2Thief nametagVisibility always
team modify 1Guard nametagVisibility always
team modify 9Spectator nametagVisibility always

function game:ingame/end_message

execute if score state game matches 1 run function game:ingame/modes/robbery/end

scoreboard players set state game 2
