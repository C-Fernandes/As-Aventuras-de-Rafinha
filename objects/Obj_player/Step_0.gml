var chao = place_meeting(x, y + 1, Obj_block);

var esquerda = keyboard_check(ord("A"));
var direita = keyboard_check(ord("D"));
var pulando = keyboard_check_pressed(ord("W")); //checa se apenas clicou, não segurou
var avanco_h = (direita - esquerda) * velocidade_h_max;
velocidade_horizontal = lerp(velocidade_horizontal, avanco_h, velocidade);
if(!chao ){
velocidade_vertical += gravidade;
velocidade = velocidade_ar;
}else{
velocidade = velocidade_chao;
}
if(chao && pulando){
velocidade_vertical += -pulo;
}
velocidade_horizontal = clamp(-velocidade_h_max, velocidade_h_max, velocidade_horizontal);