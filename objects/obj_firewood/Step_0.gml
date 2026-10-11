function interacted(){
	obj_player.idle = spr_player_idle_wood
	obj_player.move = spr_player_move_wood
	obj_player.has_wood = true
	instance_destroy(self)
}

