/// @description Insert description here
// You can write your code in this editor
if (explode && delay == 0)
{
	
	//var new_pos = update_scalar(0, .75, scl_once);
	//new_pos = ease_scalar(eas_out, new_pos, 4);
	//x = lerp(xstart, xend, new_pos);
	//y = lerp(ystart, yend, new_pos);
	
	//if (new_pos == 1) {if (alarm[0] < 0) alarm[0] = room_speed; }
	
	if (room == lvl_explosion_18)
	{
		if (distance_to_point(xend, yend) >= 6)
		{
			move_towards_point(xend, yend, 6);
		}
		
		else
		{
			if (alarm[0] < 0) alarm[0] = 3 * room_speed; 
			speed = 0;
		}
	}
	else if (room == lvl_explosion_19 || room == lvl_explosion_20 || room == lvl_explosion_21)
	{
		var new_pos = update_scalar(0, scalar, scl_once);
		
		if (room == lvl_explosion_20 || room == lvl_explosion_21) 
		{
			new_pos = ease_scalar(eas_out, new_pos, 4);
		}
		x = lerp(xstart, xend, new_pos);
		y = lerp(ystart, yend, new_pos);
		if (new_pos == 1) {if (alarm[0] < 0) alarm[0] = room_speed; }
	}
}

else if (explode) delay--;
