if (global.mostrar_pergunta) {
    draw_set_font(Font_pixel);
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Calcula a posição
    var pos_x = room_width / 4;
    var pos_y = room_height / 2;

    // Desenha a pergunta
    draw_text(pos_x, pos_y - 50, pergunta);

    // Desenha as respostas
    var y_pos = pos_y + espaco_entre; // Adiciona o espaçamento ao início

    for (var i = 0; i < array_length(respostas); i++) {
        var texto = string(i + 1) + ". " + respostas[i];
        draw_text(pos_x, y_pos, texto);
        y_pos += altura_linha; // Ajusta a posição para a próxima resposta
    }
}
