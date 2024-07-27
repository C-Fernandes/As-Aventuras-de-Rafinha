if (global.mostrar_pergunta) {
    // Calcula a posição
    var pos_x = room_width / 4;
    var pos_y = room_height / 2;

    // Verifica se o botão esquerdo do mouse foi pressionado
    if (mouse_check_button_pressed(mb_left)) {
        // Verifica se o clique está dentro da área de uma resposta
        var y_pos = pos_y + espaco_entre; // Adiciona o espaçamento ao início

        for (var i = 0; i < array_length(respostas); i++) {
            var texto = string(i + 1) + ". " + respostas[i];
            var largura_texto = string_width(texto);
            var altura_texto = string_height(texto);

            // Verifica se o clique está dentro da área do texto
            if (point_in_rectangle(mouse_x, mouse_y, 
                                   pos_x - largura_texto / 2, y_pos - altura_texto / 2, 
                                   pos_x + largura_texto / 2, y_pos + altura_texto / 2)) {
                
                verificar_resposta(i); // Verifica a resposta selecionada
                break; // Interrompe o loop após encontrar a resposta clicada
            }

            y_pos += altura_linha; // Ajusta a posição para a próxima resposta
        }
    }
}
