# Author: Denniss
# Version: 1.15.2

execute as @a[team=Guard] at @s run summon minecraft:cat ~ ~-50 ~ {Tags:["guard"],Silent:1b,ActiveEffects:[{Id:11,Amplifier:100,Duration:1000000,ShowParticles:0b}]}
scoreboard players operation number ai = ai ai
execute if score ai ai matches 1.. run function ai:spawn

function ai:force_detect/check