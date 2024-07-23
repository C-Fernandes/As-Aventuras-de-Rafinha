// Evento Draw do objeto obj_title

// Definir a fonte
draw_set_font(Font_titulo);

// Texto do título
var title = "AS AVENTURAS DE RAFINHA";

// Calcular a largura e altura da string do título
var text_width = string_width(title);
var text_height = string_height(title);

// Calcular a posição X e Y para centralizar o texto na largura da tela e posicioná-lo a 5/6 da altura
var x_pos = 680;
var y_pos = room_height/6;

// Definir cores
var color_contour = c_black; // Cor do contorno

// Espessura do contorno
var offset = 2;

// Desenhar contorno
draw_set_color(color_contour);
draw_text(x_pos - offset, y_pos, title);
draw_text(x_pos + offset, y_pos, title);
draw_text(x_pos, y_pos - offset, title);
draw_text(x_pos, y_pos + offset, title);
draw_text(x_pos - offset, y_pos - offset, title);
draw_text(x_pos + offset, y_pos - offset, title);
draw_text(x_pos - offset, y_pos + offset, title);
draw_text(x_pos + offset, y_pos + offset, title);

// Desenhar texto principal
draw_set_color(#75BF2A);
draw_text(x_pos, y_pos, title);
