switch (STATE){
	case "walking":
		if (keyboard_check(foward_key)){
			vsp = -1*spd
		} else if (keyboard_check(down_key)){
			vsp = spd
		} else {
			vsp = 0
		}

		if (keyboard_check(right_key)){
			hsp = spd
		} else if (keyboard_check(left_key)){
			hsp = -1*spd
		} else {
			hsp = 0
		}

		//apply movement 
		x += hsp 
		y += vsp 

		//movement animation
		if((vsp != 0) or (hsp != 0)){
			sprite_index = spr_player_move
			if (hsp > 0){
				image_xscale = 1
			}else if (hsp < 0){
				image_xscale = -1
			}
		}else{
			sprite_index = spr_player_idle
		}

		//other inputs do an action
		switch (keyboard_key){
	
			//interact
			case ord("E"):
				var interacted_with = place_meeting(x,y,obj_interactable)
					with (interacted_with){
						interacted()
					}
				break;
	
		}
		break;
	case "guitar":
		//player inputs for guitar
		//switch (keyboard_key){
			//case A:
			if(keyboard_check_pressed(A)){
				sprite_index = spr_player_strum_guitar
				audio_play_sound(sfx_GuitarA,1,false)
				//break;
			}else if(keyboard_check_pressed(B)){
			//case B:
				sprite_index = spr_player_strum_guitar
				audio_play_sound(sfx_GuitarB,1,false)
				//break;
			}
		//}
			
		break;
}
