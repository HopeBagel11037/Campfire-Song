base = [1,1,1,1]

if(array_equals(playing,base)){
	with(obj_music){
		unlocked[0][1] = true
		audio_play_in_sync_group(music,M_base)
		audio_start_sync_group(music)
	}
}


	playing = []
	recording = false
	instance_destroy(obj_notes)
	instance_destroy(obj_note)