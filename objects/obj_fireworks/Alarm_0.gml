/// @description Insert description here
// You can write your code in this editor

if (run_fireworks && (type == 0 || type == 1))
{
	effect_create_above(ef_firework,x, y, .5, c_red);
	alarm[0] = firework_repeat;
}

if (run_fireworks && type == 2)
{

	effect_create_above(ef_firework,x, y, fire_ind * 2, c_red);
	alarm[0] = firework_repeat;
}

if (run_fireworks && type == 3)
{
	color = make_color_rgb(fire_ind * 200 + 55, 50, fire_ind * 55);
	effect_create_above(ef_firework,x, y, fire_ind * 2, color);
	alarm[0] = firework_repeat;
	speed = fire_ind * 3;
}

if (run_fireworks && type == 4)
{
	color = make_color_rgb(fire_ind * 200 + 55, 50, fire_ind * 55);
	effect_create_above(ef_firework,x, y, fire_ind * 2, color);
	alarm[0] = firework_repeat;
	direction += dir * (1 - fire_ind) *  20;
	dir *= -1;
	speed = fire_ind * 6;
	show_debug_message(direction);
}

if (run_fireworks && type == 5)
{
	fire_ind_ease_out = ease_scalar(eas_out, fire_ind, 4);
	fire_ind_ease_in = ease_scalar(eas_in, fire_ind, 4);
	color = make_color_rgb(fire_ind * 200 + 55, 50, fire_ind_ease_in * 55);
	effect_create_above(ef_firework,x, y, fire_ind_ease_in * 2, color);
	alarm[0] = firework_repeat;
	direction += dir * (1 - fire_ind) *  20;
	dir *= -1;
	speed = fire_ind_ease_out * 4;
	show_debug_message(direction);
}


if (alarm[1] < 0) alarm[1] = room_speed * 2;