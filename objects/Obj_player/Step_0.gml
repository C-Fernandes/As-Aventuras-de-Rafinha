// Verificar se o personagem está no menu
if (is_in_menu) {
    // Lógica de movimento automático para o menu
    velocidade_horizontal = menu_velocidade_horizontal * menu_direcao;
    x += velocidade_horizontal;

    // Verificar se atingiu os limites e inverter a direção
    if (x >= menu_limite_direita) {
        x = menu_limite_direita; // Manter dentro do limite
        menu_direcao = -1; // Mudar direção para a esquerda
    } else if (x <= menu_limite_esquerda) {
        x = menu_limite_esquerda; // Manter dentro do limite
        menu_direcao = 1; // Mudar direção para a direita
    }

    // Atualizar o sprite para a direção correta e mudar para o sprite de corrida se estiver se movendo
    if (velocidade_horizontal != 0) {
        sprite_index = Spr_Rafinha_run; // Sprite de corrida
        image_xscale = menu_direcao; // Direção
    } else {
        sprite_index = Spr_Rafinha; // Sprite parado
    }
} else {
var chao = place_meeting(x, y + 1, Obj_block) || 
           place_meeting(x, y + 1, Obj_block_2) || 
           place_meeting(x, y + 1, Obj_block_3) || 
           place_meeting(x, y + 1, Obj_block_terra) || 
           place_meeting(x, y + 1, Obj_block_terra_2) || 
           place_meeting(x, y + 1, Obj_pedra);

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
	
	
	if(instance_exists(Obj_raposa) ){
		if(place_meeting(x,y,Obj_raposa)){
			if(!velocidade_vertical > 0){
				room_restart();
			}
		}
	}
	if(instance_exists(Obj_enemy) ){
		if(place_meeting(x+25,y-25,Obj_enemy)){
			if(!velocidade_vertical > 0){
				room_restart();
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
	audio_play_sound(Sound_pulo, 1, false);
	}
	velocidade_horizontal = clamp(velocidade_horizontal, -velocidade_h_max, velocidade_h_max);
	
	if (y > limite_queda) {
	    velocidade_vertical = 0;
	    velocidade_horizontal = 0;
		room_restart();
	}
}

