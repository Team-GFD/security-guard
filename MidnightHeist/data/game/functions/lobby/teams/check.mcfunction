# Author: InternetAlien
# Version: 1.15.2

execute as @s[tag=thief] as @a[team=!2Thief,distance=..3,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:red_concrete run function game:lobby/teams/join_thief
execute as @s[tag=guard] as @a[team=!1Guard,distance=..3,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:cyan_concrete run function game:lobby/teams/join_guard
execute as @s[tag=spectator] as @a[team=!9Spectator,distance=..3,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:gray_concrete run function game:lobby/teams/join_spectator