var quantidade_pulos = global.quantidade_pulos;

perguntas = ["Quantas raposas você \nencontrou até chegar aqui?",
	"Quantos blocos flutuantes \nhaviam nessa fase?",
	"Quantos pulos você precisou \ndar até chegar ao fim?"
];
respostas = [["Uma", "Duas", "Três"],
	["Cinco", "Sete", "Nove"],
	[string(quantidade_pulos-2) + " pulos", string(quantidade_pulos) + " pulos", string(quantidade_pulos+3) + " pulos"]

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

            room_goto_next(); // Exemplo de mudança de fase
        }
    } else {
		audio_play_sound(Sound_errado, 1, false);
        room_goto(Room_game_over);
    }
}