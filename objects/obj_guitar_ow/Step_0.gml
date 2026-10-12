// Inherit the parent event
function interacted(){
	with (obj_player){
		STATE = "guitar"
		sprite_index = spr_player_pickup_guitar
		
	}
	instance_create_depth(x-320,y,-100,obj_tutorial)
	instance_destroy(self)
}
