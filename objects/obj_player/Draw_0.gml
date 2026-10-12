draw_self()
//draw_text(0,0,image_index)


if(STATE == "walking"){
	if(place_meeting(x,y,obj_interactable)){
		draw_sprite(spr_E,0,x,y-64)
	}
}

if(STATE == "guitar"){
	draw_sprite(Sprite1,0,x+96,y)
	
}

//array_foreach(playing,draw_stuff)
/*
for ( var i = 0; i < (array_length(playing)); i+=1){
	draw_text(500,100+(100*i),playing[i])
}
*/

image_blend = make_colour_rgb(warmth,255,510-warmth)