
scoreboard players set lo rayData -2147483647
scoreboard players set hi rayData 2147483647
scoreboard players set aabb_exit rayData 0

function intersect:get/aabb/x
execute if score aabb_exit rayData matches 0 run function intersect:get/aabb/y
execute if score aabb_exit rayData matches 0 run function intersect:get/aabb/z

execute if score aabb_exit rayData matches 0 run scoreboard players operation @s rayDistance = lo rayData
execute if score aabb_exit rayData matches 1 run scoreboard players set @s rayDistance -1