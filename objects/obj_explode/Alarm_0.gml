/// @description Insert description here
// You can write your code in this editor

obj_game.trigger_exp++;

if (obj_game.trigger_exp >= 8)
{
	with (obj_explode)
	{
		explode = false;

		if (room == lvl_explosion_21) 	delay = irandom_range(1, room_speed * .2);

		x = xstart;
		y = ystart;

		reset_scalar(0);
	}
	
}