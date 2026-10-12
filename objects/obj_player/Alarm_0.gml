base = [3,3,3,3,2,2,2,2,1,1,1,1]
meldoy = [2,1,2,3]
strum = [7,5,4]
pick = [4,6,8,4,6,8]

if(array_equals(playing,base)){
	with(obj_music){
		unlocked[0][2] = true
		audio_play_in_sync_group(music,M_base)
		audio_start_sync_group(music)
	}
}else if(array_equals(playing,meldoy)){
	with(obj_music){
		unlocked[1][2] = true
		audio_play_in_sync_group(music,M_melody)
		audio_start_sync_group(music)
	}
}else if(array_equals(playing,strum)){
	with(obj_music){
		unlocked[2][2] = true
		audio_play_in_sync_group(music,M_strum_chord)
		audio_start_sync_group(music)
	}
}else if(array_equals(playing,pick)){
	with(obj_music){
		unlocked[3][2] = true
		audio_play_in_sync_group(music,M_pluck_chord)
		audio_start_sync_group(music)
	}
	
}
with (obj_music){
	if( (unlocked[0][2] == true) and (unlocked[1][2] == true) and (unlocked[2][2] == true) and (unlocked[3][2] == true) ){
		room_goto(RM_Win)
	}
	audio_play_sound(M_ambi,2,false)
}


	playing = []
	recording = false
	instance_destroy(obj_notes)
	instance_destroy(obj_note)