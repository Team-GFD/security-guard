# Author: InternetAlien
# Version: 1.15.2

execute unless entity @s[team=Thief] if block ~ ~-1 ~ minecraft:red_concrete run function game:lobby/teams/join_thief
execute unless entity @s[team=Guard] if block ~ ~-1 ~ minecraft:cyan_concrete run function game:lobby/teams/join_guard
execute unless entity @s[team=Spectator] if block ~ ~-1 ~ minecraft:gray_concrete run function game:lobby/teams/join_spectator