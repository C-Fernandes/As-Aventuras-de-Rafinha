// Evento Draw do objeto de game over
draw_set_font(Font_pixel); // Define a fonte do texto

// Defina a posição do texto
var text_x = 705;
var text_y = 640; // Abaixo do meio da tela

// Calcule a largura e altura do texto
var text_width = string_width("TENTAR DE NOVO");
var text_height = string_height("TENTAR DE NOVO");

// Verifica se o mouse está sobre o texto
if (mouse_x > text_x - text_width / 2 && mouse_x < text_x + text_width / 2 &&
    mouse_y > text_y - text_height / 2 && mouse_y < text_y + text_height / 2) {
    // Se o mouse está sobre o texto, define a cor para hover
    draw_set_color(c_red); // Cor quando o mouse está sobre
} else {
    // Caso contrário, define a cor normal
    draw_set_color(c_white); // Cor normal
}

// Define o alinhamento do texto
draw_set_halign(fa_center); // Alinha o texto ao centro horizontalmente
draw_set_valign(fa_middle); // Alinha o texto ao centro verticalmente

// Desenha o texto
draw_text(text_x, text_y, "TENTAR DE NOVO");
