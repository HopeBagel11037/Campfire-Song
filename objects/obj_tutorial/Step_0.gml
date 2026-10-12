if(keyboard_check_pressed(ord("E"))){
	image_index += 1
	if( (image_index == 3) and (obj_music.unlocked[0][1] == false)){
		image_index = 4
	}else if( (image_index == 4) and (obj_music.unlocked[0][1] == true)){
		image_index = 5
	}else if( (image_index == 5) and (obj_music.unlocked[1][1] == false)){
		image_index = 6
	}else if( (image_index == 6) and (obj_music.unlocked[1][1] == true)){
		image_index = 7
	}else if( (image_index == 7) and (obj_music.unlocked[2][1] == false)){
		image_index = 8
	}else if( (image_index == 8) and (obj_music.unlocked[2][1] == true)){
		image_index = 9
	}else if( (image_index == 9) and (obj_music.unlocked[3][1] == false)){
		image_index = 10
	}else if( (image_index == 10) and (obj_music.unlocked[3][1] == true)){
		image_index = 11
	}
}else if(keyboard_check_pressed(ord("Q"))){
	image_index -= 1
		if( (image_index == 3) and (obj_music.unlocked[0][1] == false)){
		image_index = 2
	}else if( (image_index == 4) and (obj_music.unlocked[0][1] == true)){
		image_index = 3
	}else if( (image_index == 5) and (obj_music.unlocked[1][1] == false)){
		image_index = 4
	}else if( (image_index == 6) and (obj_music.unlocked[1][1] == true)){
		image_index = 5
	}else if( (image_index == 7) and (obj_music.unlocked[2][1] == false)){
		image_index = 6
	}else if( (image_index == 8) and (obj_music.unlocked[2][1] == true)){
		image_index = 7
	}else if( (image_index == 9) and (obj_music.unlocked[3][1] == false)){
		image_index = 8
	}else if( (image_index == 10) and (obj_music.unlocked[3][1] == true)){
		image_index = 9
	}
}