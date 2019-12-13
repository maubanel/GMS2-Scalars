/// @description Insert description here
// You can write your code in this editor

if (!is_dead)
{
	var tick = delta_time / 1000000;
	hspeed = p_speed * tick;

	var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var left = keyboard_check(vk_left) || keyboard_check(ord("A"));

	var x_axis = right - left;

	hspeed = x_axis;

	sprite_index = (hspeed != 0) ? spr_player_right : spr_player_right_idle;

	image_xscale = (x_axis < 0 ) ? -1 : ((x_axis > 0) ? 1 : image_xscale);


	// instead of move_wrap()
	if (x - xstart > wrap_x)
	{
		x = xstart - 64;
	}




	else if (x < xstart - 64)
	{
		x = xstart + wrap_x;	
	}
}

// Damage

is_getting_hit = (place_meeting(x, y, obj_kill_b)) ? true : false;

if (is_getting_hit && !is_dead)
{
	
	new_speed = 0;
	if (room == lvl_damage_25 || room == lvl_damage_26) new_speed = 1;
	
	if (room > lvl_damage_26) 
	{
		new_speed = update_scalar(2, 8, scl_once, 0, 1, 0, 1);
		if (room == lvl_damage_28) new_speed = ease_scalar(eas_in, new_speed, 2);
		new_speed = new_speed * .88 + .12;
	}

	new_a = update_scalar(0, new_speed, scl_bounce_repeat, 0, 0, 1, 1);
	if (room == lvl_damage_28) new_a = ease_scalar(eas_in_out, new_a, 4);

	//image_alpha = new_a * .2 + .05;
	image_alpha = new_a;

	new_b = update_scalar(1, 8, scl_once);
	if (room == lvl_damage_28) new_b = ease_scalar(eas_in, new_b, 2);
	if (new_b == 1) is_dead = true;
	non_red_color = 255 - (new_b * 255);
	red_color = new_b * 105 + 150;
	
	if (room >= lvl_damage_26) image_blend = make_color_rgb(red_color, non_red_color, non_red_color);
}
else if (image_alpha != 1) 
{
	new_a = 1;
	non_red_color = 255;
	red_color = 0;
	image_alpha =  1;
	reset_scalar(2);
	reset_scalar(1);
	reset_scalar(0);
	image_blend = -1;
	new_b = 0;
	obj_game.seconds = 0;
	new_speed = 0;
}

if (is_dead && is_getting_hit) 
{
	is_getting_hit = false;
	sprite_index = spr_player_dead;
	reset_scalar(2);
	reset_scalar(1);
	reset_scalar(0);
	image_blend = -1;
	if (alarm[0] < 0) alarm[0] = room_speed * 5;
}
