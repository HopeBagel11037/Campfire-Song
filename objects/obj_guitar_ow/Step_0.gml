// Inherit the parent event
function interacted(){
	with (obj_player){
		STATE = "guitar"
		sprite_index = spr_player_pickup_guitar
	}
	instance_destroy(self)
}
