var chao = place_meeting(x, y + 1, Obj_block) || place_meeting(x, y + 1, Obj_block_2);


if(place_meeting(x + 1, y, Obj_collision_enemy) || place_meeting(x -1, y, Obj_collision_enemy)){
	direction +=180;
}	

if(direction == 0){
	image_xscale =1;
}
if(direction == 180){
	image_xscale = -1;
}



if(!chao){
	velocidade_vertical += gravidade;
}