# Author: InternetAlien
# Version: 1.15.2

schedule clear game:ingame/global_end

clear @a[team=!Spectator]
effect clear @a[team=!Spectator]
team join Thief @a[team=Dead]

xp set @a 0 points
xp set @a 0 levels

execute as @e[type=minecraft:armor_stand,tag=camera] at @s run function game:ingame/camera/enable
kill @e[type=minecraft:armor_stand,tag=player_holder]

scoreboard players reset * game_id
tag @a remove inGame

bossbar set minecraft:stolen visible false
bossbar set minecraft:stolen value 0

execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guard_door] at @s run tp @s ~ 104 ~
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=guard_door] at @s run fill ~1 ~ ~ ~-1 ~2 ~ minecraft:end_stone_brick_wall

scoreboard players set end_cooldown game 70

scoreboard objectives setdisplay list stolen

team modify Thief nametagVisibility always
team modify Guard nametagVisibility always

execute if score mode game matches 0 run function game:ingame/modes/robbery/end
execute if score mode game matches 1 run function game:ingame/modes/stealth/end
execute if score mode game matches 2 run function game:ingame/modes/free_for_all/end

scoreboard players set state game 2
