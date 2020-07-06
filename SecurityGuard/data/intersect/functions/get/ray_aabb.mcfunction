
function intersect:get/ray_aabb_distance

execute if score @s rayDistance matches 0.. run function intersect:get/aabb/get_hit

function intersect:draw_hit