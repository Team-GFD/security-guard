# Author: Denniss
# Version: 1.16.1

execute as @a[team=Guard] at @s run summon minecraft:cat ~ ~-50 ~ {Tags:["guard","AI"],Silent:1b,PersistenceRequired:1b,ActiveEffects:[{Id:11,Amplifier:100,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:empty"}
scoreboard players operation number AI = total AI
execute if score total AI matches 1.. run function ai:spawn/spawn
schedule function ai:spawn/reset_target 10s
