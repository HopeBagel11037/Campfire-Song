function interacted(){
	if( (obj_music.unlocked[0][2] != true) or (obj_music.unlocked[1][2] != true) or (obj_music.unlocked[2][2] != true)){
		audio_play_sound(sfx_fox,1,false)
		alarm[0] = 60
		image_speed = 4
	}
}

if((obj_music.unlocked[0][2] == true) and (obj_music.unlocked[1][2] == true) and (obj_music.unlocked[2][2] == true)){
	sprite_index = spr_fox_eep
	image_speed = 1

	if (spawned == false){
		instance_create_depth(x,y+64,depth,obj_sheetpickup_pluck_chords)
		spawned = true
	}
}