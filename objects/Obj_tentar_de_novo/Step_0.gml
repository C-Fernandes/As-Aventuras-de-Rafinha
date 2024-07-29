
var text_x = 705;
var text_y = 640;

// Verifica se o mouse está sobre o texto e se foi clicado
if (mouse_check_button_pressed(mb_left)) {
    var largura_texto = string_width("Tentar de novo");
    var altura_texto = string_height("Tentar de novo");
    if (point_in_rectangle(mouse_x, mouse_y, text_x - largura_texto / 2, text_y - altura_texto / 2, text_x + largura_texto / 2, text_y + altura_texto / 2)) {
        // Ação ao clicar no texto "Tentar de novo"
					room_goto(global.prev_room); // Substitua "PrimeiraFase" pelo nome da sua primeira fase
	}
}