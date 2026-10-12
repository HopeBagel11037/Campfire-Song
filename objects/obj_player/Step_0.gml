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
		if!(place_meeting(x+hsp,y,obj_col)){
			x+=hsp
		}
		if!(place_meeting(x,y+vsp,obj_col)){
			y+=vsp
		} 

		//movement animation
		if((vsp != 0) or (hsp != 0)){
			sprite_index = move
			if (hsp > 0){
				image_xscale = 1
			}else if (hsp < 0){
				image_xscale = -1
			}
		}else{
			sprite_index = idle
		}

		//other inputs do an action
		if(keyboard_check_pressed( ord("E"))){
	
			//interact

				interacted_with = place_meeting(x,y,obj_interactable)
					with (instance_nearest(x,y,obj_interactable)){
						interacted()
					}
				
	
		}
		break;
	case "guitar":
		
		
		//other inputs do an action
		switch (keyboard_key){
				
			case (vk_tab):
				STATE = "walking"
				instance_create_depth(x,y,depth,obj_guitar_ow)
				instance_destroy(obj_tutorial)
				break;
		}
		

	
		//player inputs for guitar
		if(keyboard_check_pressed(A)){
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarA,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),1)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-10,depth-1,obj_note)
				}
			}
			

		}else if(keyboard_check_pressed(B)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarB,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),2)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-15,depth-1,obj_note)
				}
			}
		}else if(keyboard_check_pressed(C)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarC,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),3)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-19,depth-1,obj_note)
				}
			}
		}else if(keyboard_check_pressed(D)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarD,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),4)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-24,depth-1,obj_note)
				}
			}
		}else if(keyboard_check_pressed(E)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarE,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),5)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-28,depth-1,obj_note)
				}
			}
		}else if(keyboard_check_pressed(F)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarF,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),6)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-32,depth-1,obj_note)
				}
			}
		}else if(keyboard_check_pressed(G)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarG,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),7)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-37,depth-1,obj_note)
				}
			}
		}else if(keyboard_check_pressed(A2)){
		//case B:
			sprite_index = spr_player_strum_guitar
			audio_play_sound(sfx_GuitarA2,1,false)
			if(recording){
				array_insert(playing,(0+array_length(playing)),8)
				with(obj_notes){
					instance_create_depth(x+((array_length(obj_player.playing)-1)*16),y-41,depth-1,obj_note)
				}
			}
		}
		
		if(keyboard_check_pressed(vk_space)){
			audio_stop_all()
			instance_create_depth(x,y-32,depth,obj_notes)
			recording = true
			alarm[0] = 300
		}
		

		
		break;
		
	case "dead":
		sprite_index = spr_player_dead

		break;
}

//warmth cap
if(warmth > 255){
	warmth = 255
}

//dying
warmth -= tick

//death
if(warmth = 0){
	STATE = "dead";
	audio_play_sound(sfx_death,10,false)
	tick = 0
	alarm[1] = 600
	warmth = -1
	
}

depth = -y