perguntas = ["Quantas cavernas haviam \nnessa fase?",
	"Quantos personagens carecas \n você encontrou?",
];
respostas = [["Duas", "Três", "Quatro"],
	["Um", "Dois", "Três"],
];
respostas_corretas = [1, 2, 1]; // Índices das respostas corretas para cada pergunta

indice_pergunta_atual = 0; // Índice da pergunta atual
espaco_entre = 50;
altura_linha = 60;
global.mostrar_pergunta = true;
global.pergunta_exibida = false;

function verificar_resposta(indice) {
    if (indice == respostas_corretas[indice_pergunta_atual]) {
		audio_play_sound(Sound_correto, 1, false);
		
        // Avança para a próxima pergunta ou para a próxima fase
        indice_pergunta_atual += 1;

        if (indice_pergunta_atual >= array_length(perguntas)) {
            // Se todas as perguntas foram respondidas corretamente
			audio_play_sound(Sound_fim_de_jogo, 1, false);
            room_goto_next(); // Exemplo de mudança de fase
        }
    } else {
		audio_play_sound(Sound_errado, 1, false);
        room_goto(Room_game_over);
    }
}