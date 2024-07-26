/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.mostrar_primeira_mensagem) {
    tempo_exibicao--;
    if (tempo_exibicao <= 0) {
        global.mostrar_primeira_mensagem = false;
        global.mostrar_pergunta = true;
        instance_destroy(); // Destroi o objeto após exibir a mensagem
		audio_play_sound(Sound_cocorico, 1, false);
    }
}