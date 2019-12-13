/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
if (position_meeting(mouse_x, mouse_y, obj_next_room))
{
	if (mouse_check_button(mb_left))
	{
		image_xscale = 1.25;
		image_yscale = 1.25;
	}
	else 
	{
		var scalar = update_scalar(0, .75, scl_bounce_repeat, 0, 1, .5);
		var ease = ease_scalar(eas_out, scalar, 1);
		var anim_val = lerp(.85, 1.15, ease);
		image_xscale = anim_val;
		image_yscale = anim_val;
		if (!reset) reset = true;
	}
	
	if (mouse_check_button_released(mb_left))
	{
		switch (room)
		{
			case lvl_scalar_1:
			room_goto(lvl_scalar_2);
			break;
			
			case lvl_scalar_2:
			room_goto(lvl_scalar_3);
			break;
			
			case lvl_scalar_3:
			room_goto(lvl_scalar_4);
			break;
			
			case lvl_scalar_4:
			room_goto(lvl_scalar_5);
			break;
			
			case lvl_scalar_5:
			room_goto(lvl_ease_6);
			break;
			
			case lvl_ease_6:
			room_goto(lvl_ease_7);
			break;
			
			case lvl_ease_7:
			room_goto(lvl_ease_8);
			break;
			
			case lvl_ease_8:
			room_goto(lvl_ease_9);
			break;
			
			case lvl_ease_9:
			room_goto(lvl_ease_out_10);
			break;
			
			case lvl_ease_out_10:
			room_goto(lvl_ease_out_11);
			break;
			
			case lvl_ease_out_11:
			room_goto(lvl_ease_out_12);
			break;
			
			case lvl_ease_out_12:
			room_goto(lvl_ease_out_13);
			break;
			
			case lvl_ease_out_13:
			room_goto(lvl_ease_in_out_14);
			break;
			
			case lvl_ease_in_out_14:
			room_goto(lvl_ease_in_out_15);
			break;
			
			case lvl_ease_in_out_15:
			room_goto(lvl_ease_in_out_16);
			break;
			
			case lvl_ease_in_out_16:
			room_goto(lvl_ease_in_out_17);
			break;
			
			case lvl_ease_in_out_17:
			room_goto(lvl_explosion_18);
			break;
			
			case lvl_explosion_18:
			room_goto(lvl_explosion_19);
			break;
			
			case lvl_explosion_19:
			room_goto(lvl_explosion_20);
			break;
			
			case lvl_explosion_20:
			room_goto(lvl_explosion_21);
			break;
			
			case lvl_explosion_21:
			room_goto(lvl_sign_22);
			break;
			
			case lvl_sign_22:
			room_goto(lvl_sign_23);
			break;
			
			case lvl_sign_23:
			room_goto(lvl_sign_24);
			break;
			
			case lvl_sign_24:
			room_goto(lvl_damage_25);
			break;
			
			case lvl_damage_25:
			room_goto(lvl_damage_26);
			break;
			
			case lvl_damage_26:
			room_goto(lvl_damage_27);
			break;
			
			case lvl_damage_27:
			room_goto(lvl_damage_28);
			break;
	
		}
	}

}

else 
{
	image_xscale = 1;
	image_yscale = 1;
	if (reset)
	{
		reset_scalar(0);
		reset = false;
	}
}

if (keyboard_check_pressed(ord("1")))
{
	if (room != lvl_scalar_1)
	{
		room_goto(lvl_scalar_1);	
	}
}	

else if (keyboard_check_pressed(ord("2")))
{
	if (room != lvl_ease_6)
	{
		room_goto(lvl_ease_6);	
	}
}	

else if (keyboard_check_pressed(ord("3")))
{
	if (room != lvl_ease_out_10)
	{

		room_goto(lvl_ease_out_10);	
	}
}	

else if (keyboard_check_pressed(ord("4")))
{
	if (room != lvl_ease_in_out_14)
	{
		// So game doesn't throw error to uninitialized variable created in room 6
		
		room_goto(lvl_ease_in_out_14);	
	}
}	

else if (keyboard_check_pressed(ord("5")))
{
	room_goto(lvl_explosion_18);	
}

else if (keyboard_check_pressed(ord("6")))
{
	room_goto(lvl_sign_22);	
}

else if (keyboard_check_pressed(ord("7")))
{
	room_goto(lvl_damage_25);	
}

else if (keyboard_check_pressed(ord("8")))
{
	room_goto(lvl_damage_28);	
}

if (room == lvl_damage_28) image_alpha = 0;