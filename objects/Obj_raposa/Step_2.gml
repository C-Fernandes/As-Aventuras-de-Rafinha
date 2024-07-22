// Verifica colisão vertical com Obj_block e Obj_block_2
if (place_meeting(x, y + velocidade_vertical, Obj_block) || place_meeting(x, y + velocidade_vertical, Obj_block_2)) {
    while (!place_meeting(x, y + sign(velocidade_vertical), Obj_block) && !place_meeting(x, y + sign(velocidade_vertical), Obj_block_2)) {
        y += sign(velocidade_vertical);
    }
    velocidade_vertical = 0;
}

y+= velocidade_vertical;