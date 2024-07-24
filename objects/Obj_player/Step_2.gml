blocos = [Obj_block, Obj_block_2, Obj_block_3, Obj_block_terra, Obj_block_terra_2];

// Verifica colisão horizontal
var colisao_horizontal = false;
for (var i = 0; i < array_length(blocos); i++) {
    if (place_meeting(x + velocidade_horizontal, y, blocos[i])) {
        colisao_horizontal = true;
        break; // Se encontrar colisão, saia do loop
    }
}

if (colisao_horizontal) {
    while (!place_meeting(x + sign(velocidade_horizontal), y, blocos[i])) {
        x += sign(velocidade_horizontal);
    }
    velocidade_horizontal = 0;
}
x += velocidade_horizontal;

// Verifica colisão vertical
var colisao_vertical = false;
for (var i = 0; i < array_length(blocos); i++) {
    if (place_meeting(x, y + velocidade_vertical, blocos[i])) {
        colisao_vertical = true;
        break; // Se encontrar colisão, saia do loop
    }
}

if (colisao_vertical) {
    while (!place_meeting(x, y + sign(velocidade_vertical), blocos[i])) {
        y += sign(velocidade_vertical);
    }
    velocidade_vertical = 0;
}
y += velocidade_vertical;

