var chao = place_meeting(x, y + 1, Obj_block);

var esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
var direita = keyboard_check(ord("D")) || keyboard_check(vk_right);
var pulando = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up); //checa se apenas clicou, não segurou
var avanco_h = (direita - esquerda) * velocidade_h_max;
velocidade_horizontal = lerp(velocidade_horizontal, avanco_h, velocidade);

if(abs(velocidade_horizontal) < 0.6){
	velocidade_horizontal= 0;
}
if(velocidade_horizontal < 0){
	image_xscale = -1;
}
if(velocidade_horizontal > 0){
image_xscale =1;
}

if(instance_exists(Obj_enemy) && !y < Obj_enemy.y){
	if(place_meeting(x,y,Obj_enemy)){
		if(!velocidade_vertical > 0){
			x = global.checkpoint_x;
			y = global.checkpoint_y;
		}
	}
}
if(instance_exists(Obj_raposa) && !y < Obj_raposa.y){
	if(place_meeting(x,y,Obj_raposa)){
		if(!velocidade_vertical > 0){
			x = global.checkpoint_x;
			y = global.checkpoint_y;
		}
	}
}
if(!chao ){
	if(velocidade_vertical < 0){
		sprite_index = Spr_Rafinha_jumping;
	} else if(velocidade_vertical > 0){
		sprite_index = Spr_Rafinha_falling;
	}
velocidade_vertical += gravidade;
velocidade = velocidade_ar;
}else{
	if(velocidade_horizontal = 0){
		sprite_index = Spr_Rafinha;
	} else if (velocidade_horizontal != 0){
		sprite_index = Spr_Rafinha_run;
	}
velocidade = velocidade_chao;
}
if(chao && pulando){
velocidade_vertical += -pulo;
}
velocidade_horizontal = clamp(velocidade_horizontal, -velocidade_h_max, velocidade_h_max);