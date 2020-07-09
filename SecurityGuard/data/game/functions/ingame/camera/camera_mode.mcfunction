# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=!in_cam] run function game:ingame/camera/enter_camera

effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 10 true
effect give @s minecraft:weakness 1 100 true
effect give @s minecraft:levitation 1 255 true

execute as @s at @s if entity @e[type=minecraft:armor_stand,tag=camera,tag=!disabled,sort=nearest,limit=1,distance=..3] run effect clear @s minecraft:blindness
execute as @s[team=!9Spectator] at @s if entity @e[type=minecraft:armor_stand,tag=camera,tag=disabled,sort=nearest,limit=1,distance=..3] run effect give @s minecraft:blindness 2 0 true
execute as @s[team=!9Spectator] at @s if entity @e[type=minecraft:armor_stand,tag=camera,tag=disabled,sort=nearest,limit=1,distance=..3] run title @s[] times 0 3 0
execute if score state game matches 1 as @s[team=!9Spectator] at @s if entity @e[type=minecraft:armor_stand,tag=camera,tag=disabled,sort=nearest,limit=1,distance=..3] run title @s title [{"text":"Error: #404","color":"dark_red","bold":false}]
execute if score state game matches 1 as @s[team=!9Spectator] at @s if entity @e[type=minecraft:armor_stand,tag=camera,tag=disabled,sort=nearest,limit=1,distance=..3] run title @s subtitle [{"text":"No signal found.","color":"red","bold":true}]

execute if score state game matches 1 at @s run title @s actionbar [{"text":"Now Viewing: ","color":"dark_gray","italic":false},{"selector":"@e[type=armor_stand,tag=camera,sort=nearest,limit=1]","bold":true}]

tp @s[nbt={SelectedItemSlot:0}] @e[tag=camera,limit=1,scores={camera_id=0}]
tp @s[nbt={SelectedItemSlot:1}] @e[tag=camera,limit=1,scores={camera_id=1}]
tp @s[nbt={SelectedItemSlot:2}] @e[tag=camera,limit=1,scores={camera_id=2}]
tp @s[nbt={SelectedItemSlot:3}] @e[tag=camera,limit=1,scores={camera_id=3}]
tp @s[nbt={SelectedItemSlot:4}] @e[tag=camera,limit=1,scores={camera_id=4}]
tp @s[nbt={SelectedItemSlot:5}] @e[tag=camera,limit=1,scores={camera_id=5}]
tp @s[nbt={SelectedItemSlot:6}] @e[tag=camera,limit=1,scores={camera_id=6}]
tp @s[nbt={SelectedItemSlot:7}] @e[tag=camera,limit=1,scores={camera_id=7}]
tp @s[nbt={SelectedItemSlot:8}] @e[tag=camera,limit=1,scores={camera_id=8}]

function game:ingame/camera/inventory_control

execute if score @s[team=1Guard] sneak matches 1 run function game:ingame/camera/leave_camera
