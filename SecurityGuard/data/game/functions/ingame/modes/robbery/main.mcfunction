# Author: InternetAlien
# Version: 1.15.2

scoreboard players set thieves_left game 0
execute as @e[team=2Thief] run scoreboard players add thieves_left game 1

execute if score cooldown game matches -1 as @a[team=2Thief] at @s run function game:ingame/modes/robbery/thief
execute if score cooldown game matches -1 as @a[team=1Guard] at @s run function game:ingame/modes/robbery/guard

execute as @a[team=!3Dead] at @s at @s[tag=lower,y=113,dy=1000,team=!9Spectator] run function game:ingame/map/up
execute as @a[team=!3Dead] at @s at @s[tag=upper,y=112,dy=-1000,team=!9Spectator] run function game:ingame/map/down

execute as @a[tag=update_map,team=!9Spectator] at @s[team=!3Dead] run function game:ingame/map/update

execute as @a[gamemode=adventure,tag=camera_mode] run function game:ingame/camera/camera_mode
execute as @e[type=minecraft:armor_stand,tag=camera,tag=!disabled] at @s unless block ~ ~ ~ minecraft:acacia_fence run function game:ingame/camera/disable
execute as @e[type=minecraft:armor_stand,tag=camera,tag=disabled] at @s run particle minecraft:lava ~ ~ ~ 0 0 0 0.01 1 normal

execute if score cooldown game matches -1 if score thieves_left game matches 0 run function game:ingame/global_end
execute if score cooldown game matches 0.. if score tick game matches 1.. run scoreboard players remove tick game 1

execute if score cooldown game matches 0..4 run function game:ingame/guard_door
execute if score tick game matches 0 run function game:ingame/countdown
execute if score tick game matches 0 run scoreboard players set tick game 20

scoreboard players set @a sneak 0
scoreboard players set @a used_camera 0