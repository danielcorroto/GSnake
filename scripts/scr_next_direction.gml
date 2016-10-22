// Devuelve la nueva dirección de la serpiente

actual = argument0;
new = DIR_NO;

xx = device_get_tilt_x();
yy = device_get_tilt_y();

if (xx != 0 or yy != 0) {
    // Uso del acelerómetro
    if (actual == DIR_UP) {
        new = scr_max_direction(-xx,yy, 0,-yy);
    } else if (actual == DIR_RIGHT) {
        new = scr_max_direction(-xx,yy,xx,  0);
    } else if (actual == DIR_DOWN) {
        new = scr_max_direction(  0,yy,xx,-yy);
    } else if (actual == DIR_LEFT) {
        new = scr_max_direction(-xx, 0,xx,-yy);
    } else {
        new = scr_max_direction(-xx,yy,xx,-yy);
    }
} else {
    // Uso del teclado
    if (keyboard_lastkey == vk_up) new = DIR_UP;
    else if (keyboard_lastkey == vk_right) new = DIR_RIGHT;
    else if (keyboard_lastkey == vk_down) new = DIR_DOWN;
    else if (keyboard_lastkey == vk_left) new = DIR_LEFT;
    else new = DIR_RIGHT;
}

return new;

