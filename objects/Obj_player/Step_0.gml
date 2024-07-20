var chao = place_meeting(x, y + 1, Obj_block);

var esquerda = keyboard_check(ord("A"));
var direita = keyboard_check(ord("D"));
var pulando = keyboard_check_pressed(ord("W")); //checa se apenas clicou, não segurou
var avanco_h = (direita - esquerda) * velocidade_h_max;
velocidade_horizontal = lerp(velocidade_horizontal, avanco_h, velocidade);

if(abs(velocidade_horizontal) < 0.6){
	velocidade_horizontal= 0;
}
if(keyboard_lastkey = ord("A")){
	image_xscale = -1;
}
if(keyboard_lastkey = ord("D")){
image_xscale =1;
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