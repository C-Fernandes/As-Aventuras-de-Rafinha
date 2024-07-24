// No Draw Event do Obj_controlador

if (mostrar_introducao) {
    var margem = 20;
    draw_text(margem, margem, introducao);
    draw_text(margem, display_get_height() - margem, "Pressione qualquer tecla para continuar.");
} else if (mostrar_pergunta && pergunta_atual >= 0) {
    var margem = 20;
    var pergunta = perguntas[pergunta_atual];
    var opcoes = respostas[pergunta_atual];

    draw_text(margem, margem, pergunta);

    for (var i = 0; i < array_length_1d(opcoes); i++) {
        draw_text(margem, margem + 40 + i * 30, string(i + 1) + ". " + opcoes[i]);
    }

    draw_text(margem, display_get_height() - margem, "Pressione 1, 2, 3 ou 4 para escolher uma resposta.");
}
