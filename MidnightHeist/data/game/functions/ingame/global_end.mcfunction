# Author: InternetAlien
# Version: 1.15.2

schedule clear game:ingame/global_end

kill @e[type=armor_stand,tag=shp_driver]

clear @a[team=!9Spectator]
effect clear @a[team=!9Spectator]

effect give @a instant_health 1 10 true

xp set @a 0 points
xp set @a 0 levels

spawnpoint @a -40 125 -35

execute as @e[type=minecraft:armor_stand,tag=camera] at @s run function game:ingame/camera/enable
kill @e[type=minecraft:armor_stand,tag=player_holder]

#scoreboard players set initial_thieves game 0

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

team modify 2Thief nametagVisibility always
team modify 1Guard nametagVisibility always
team modify 9Spectator nametagVisibility always

execute as @a[tag=camera_mode] unless entity @s[team=!1Guard,team=!4Escaped] run function game:ingame/camera/leave_camera

execute if score state game matches 1 run function game:ingame/modes/robbery/end

scoreboard players set state game 2
