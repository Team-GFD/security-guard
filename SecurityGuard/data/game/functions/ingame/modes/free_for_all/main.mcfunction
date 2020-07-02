# Author: InternetAlien
# Version: 1.15.2

scoreboard players set thieves_left game 0

execute if score cooldown game matches -1 run execute as @a[team=Thief] run function game:ingame/thief
execute if score cooldown game matches -1 run execute as @a[team=Guard] run function game:ingame/guard
execute as @a[tag=camera_mode] run function game:ingame/camera/camera_mode

execute if score cooldown game matches -1 if score thieves_left game matches 0 run function game:ingame/end
execute if score cooldown game matches 0.. if score tick game matches 1.. run scoreboard players remove tick game 1

execute if score tick game matches 0 run function game:ingame/countdown
execute if score tick game matches 0 run scoreboard players set tick game 20

scoreboard players set @a sneak 0
scoreboard players set @a used_camera 0