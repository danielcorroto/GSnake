// Devuelve la nueva dirección de la serpiente

actual = argument0;
xx = device_get_tilt_x();
yy = device_get_tilt_y();

if (abs(yy) > abs(xx) or keyboard_lastkey == vk_left or keyboard_lastkey == vk_right) {
    // Movimiento horizontal
    if (yy > 0 or keyboard_lastkey == vk_right) {
        return DIR_RIGHT;
    } else {
        return DIR_LEFT;
    }
} else {
    // Movimiento vertical
    if (xx > 0 or keyboard_lastkey == vk_down) {
        return DIR_DOWN;
    } else {
        return DIR_UP;
    }
}
