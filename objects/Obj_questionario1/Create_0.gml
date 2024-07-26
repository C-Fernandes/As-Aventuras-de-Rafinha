pergunta = "Quantas raposas você \nencontrou até chegar aqui?";
respostas = ["Uma", "Duas", "Três"];
resposta_correta = 1;
espaco_entre = 50;
altura_linha = 60;

function verificar_resposta(indice) {
    if (indice == resposta_correta) {
        // Ação para resposta correta
        show_message("Correto! Avançando para a próxima fase.");
        // Mudar para a próxima sala ou fase
        room_goto_next(); // Exemplo de mudança de fase
    } else {
        // Ação para resposta incorreta
        show_message("Resposta incorreta. Tente novamente.");
        // Qualquer ação adicional para respostas incorretas
    }
}