// Calcula la dirección máxima de las recibidas
// Parámetros: UP, RIGHT, DOWN, LEFT

up = argument0;
right = argument1;
down = argument2;
left = argument3;

dir_max = max(up, right, down, left);

if (dir_max == up) return DIR_UP;
if (dir_max == right) return DIR_RIGHT;
if (dir_max == down) return DIR_DOWN;
if (dir_max == left) return DIR_LEFT;
