# Author: InternetAlien
# Version: 1.15.2

scoreboard players set thieves_left game 0

execute if score cooldown game matches -1 as @a[team=2Thief] run function game:ingame/modes/free_for_all/thief
execute if score cooldown game matches -1 as @a[team=1Guard] run function game:ingame/modes/free_for_all/guard

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