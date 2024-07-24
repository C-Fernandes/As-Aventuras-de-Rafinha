// No Step Event do Obj_controlador

if (mostrar_introducao) {
    if (keyboard_check_pressed(vk_anykey)) {
        mostrar_introducao = false;
        mostrar_pergunta = true;
        pergunta_atual = 0; // Começar com a primeira pergunta
    }
} else if (mostrar_pergunta && pergunta_atual >= 0) {
    // Verifica se uma das teclas numéricas foi pressionada
    if (keyboard_check_pressed(vk_1)) {
        // Verifica se a resposta está correta
        if (0 == respostas_corretas[pergunta_atual]) {
            show_message("Correto!");
        } else {
            show_message("Errado!");
        }
        pergunta_atual += 1;
    } else if (keyboard_check_pressed(vk_2)) {
        if (1 == respostas_corretas[pergunta_atual]) {
            show_message("Correto!");
        } else {
            show_message("Errado!");
        }
        pergunta_atual += 1;
    } else if (keyboard_check_pressed(vk_3)) {
        if (2 == respostas_corretas[pergunta_atual]) {
            show_message("Correto!");
        } else {
            show_message("Errado!");
        }
        pergunta_atual += 1;
    } else if (keyboard_check_pressed(vk_4)) {
        if (3 == respostas_corretas[pergunta_atual]) {
            show_message("Correto!");
        } else {
            show_message("Errado!");
        }
        pergunta_atual += 1;
    }
    
    // Verifica se todas as perguntas foram respondidas
    if (pergunta_atual >= array_length_1d(perguntas)) {
        show_message("Você respondeu todas as perguntas!");
        mostrar_pergunta = false;
        pergunta_atual = -1; // Resetar pergunta atual
    }
}
