
gravidade = 0.3;
velocidade = 0.1;
velocidade_chao = velocidade;
velocidade_ar = 0.4;
velocidade_horizontal = 0;
velocidade_vertical = 0;
velocidade_h_max = 6;

// Variáveis de movimento específicas para o menu:
menu_velocidade_horizontal = 4; 
menu_direcao = 1; 
menu_limite_direita = room_width - sprite_width / 2;
menu_limite_esquerda = sprite_width / 2; 
is_in_menu = false;
is_in_game_over = false;

global.quantidade_pulos = 0;

limite_queda = room_height + 100;
pulo = 8;