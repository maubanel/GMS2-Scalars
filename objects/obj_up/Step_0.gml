/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, id) && ind == 0)
{
	image_index = 1;
	image_xscale = 1.25;
	image_yscale = 1.25;
	
	if (mouse_check_button(mb_left))
	{
		image_index = 2;	
	}
	if (mouse_check_button_released(mb_left))
	{
		obj_welcome.ease_type--;
		if ( obj_welcome.ease_type < eas_in) obj_welcome.ease_type= eas_in_out;
	}
}
else if (ind == 0) 
{
	image_index = 0;
	
	image_xscale = 1;
	image_yscale = 1;
}

if (position_meeting(mouse_x, mouse_y, id) && ind == 1)
{

	image_index = 1;
	image_xscale = 1.25;
	image_yscale = 1.25;
	
	if (mouse_check_button(mb_left))
	{
		image_index = 2;	
	}
	if (mouse_check_button_released(mb_left))
	{
		obj_welcome.ease_amount--;
		if ( obj_welcome.ease_amount == -1) obj_welcome.ease_amount = 4;
	}
}
else if (ind == 1)
{
	image_index = 0;
	
	image_xscale = 1;
	image_yscale = 1;
}