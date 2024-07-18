if(place_meeting(x+velocidade_horizontal, y , Obj_block)){
	while(!place_meeting(x + sign(velocidade_horizontal), y, Obj_block)){
	x += sign(velocidade_horizontal);
	}
	velocidade_horizontal = 0;
}
x += velocidade_horizontal;

if(place_meeting(x, y+velocidade_vertical, Obj_block)){
	while(!place_meeting(x, y + sign(velocidade_vertical), Obj_block)){
		y+= sign(velocidade_vertical);
	}
	velocidade_vertical=0;
}
y+= velocidade_vertical;