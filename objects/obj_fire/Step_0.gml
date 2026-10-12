function interacted(){
	if(obj_player.has_wood){
		fuel += 100
		warmth += 1
		obj_player.has_wood = false
		obj_player.idle = spr_player_idle
		obj_player.move = spr_player_move
	}
}

	if (distance_to_object(obj_player) < aura) and (fuel > 0){
		obj_player.warmth += warmth
	}

if(fuel <= 0){
	fuel = 0
	image_speed = 0
	image_index = 0
}else{
	image_speed = 1
}