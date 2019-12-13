/// @description Insert description here
// You can write your code in this editor
seconds += delta_time / 1000000;


if (room == lvl_scalar_1)
{
	seconds = clamp(seconds, 0, 5);
}

else if (room == lvl_scalar_2)
{
	seconds = clamp(seconds, 0, 4);	
}

else if (room == lvl_scalar_3)
{
	seconds = clamp(seconds, 0, 3);	
}

else if ((room == lvl_damage_26 || room == lvl_damage_25) && !obj_player.is_getting_hit) seconds -= delta_time / 1000000;

else
{
	seconds = seconds % 100;	
}

if (trigger_exp >= 8)
{
	trigger_exp = 0;
	instance_create_depth(room_width/2 - 192, room_height / 2 + 60, 0, obj_bomb);
}

