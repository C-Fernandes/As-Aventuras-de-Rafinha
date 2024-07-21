if(place_meeting(x,y,Obj_player)){
	global.checkpoint_x = x;
	global.checkpoint_y = y - Obj_player.sprite_height;
}