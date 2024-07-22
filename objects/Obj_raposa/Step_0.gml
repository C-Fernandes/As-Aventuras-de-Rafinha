var chao = place_meeting(x,y+1,  Obj_block);

if(place_meeting(x + 1, y, Obj_collision_enemy) || place_meeting(x -1, y, Obj_collision_enemy)){
	direction +=180;
}	

if(direction == 0){
	image_xscale =1;
}
if(direction == 180){
	image_xscale = -1;
}

if(Obj_player. y < y){
	if(place_meeting(x,y -1, Obj_player)){
		if(Obj_player.velocidade_vertical > 0){
			Obj_player.velocidade_vertica = 0;
			Obj_player.velocidade_vertical -= Obj_player.pulo;
			instance_destroy();
		}
	}
}

if(!chao){
	velocidade_vertical += gravidade;
}