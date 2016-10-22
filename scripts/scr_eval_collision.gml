// Evalúa si hay alguna colisión con los bordes de la pantalla o consigo misma

// Finaliza la partida si hay colisión
for (i=0; i<instance_number(obj_snake); i++) {
    inst = instance_find(obj_snake,i);
    if (inst.x == xzone * SNAKE_SIZE and
    inst.y == yzone * SNAKE_SIZE) {
        return true;
    }
}

// Reinicia la partida si se sale 
if (xzone * SNAKE_SIZE >= room_width or
    xzone < 0 or
    yzone * SNAKE_SIZE >= room_height or
    yzone < 0) {
    return true;
}

return false;
