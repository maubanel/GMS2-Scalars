/// @description Insert description here
// You can write your code in this editor
if (room == lvl_sign_22)
{

	image_xscale += scale_speed * sine;
	if (image_xscale <= -1 || image_xscale >= 1)
	{
		sine *= -1;	
	}
}

else if (room == lvl_sign_23 || room == lvl_sign_24)
{
	new_scale = update_scalar(0, 1.5, scl_bounce_repeat, 0, -1, 1, 1);
	if (room == lvl_sign_24) new_scale_2 = ease_scalar(ease_type, new_scale, ease_amount);
	if (room == lvl_sign_24) image_xscale = new_scale_2;
	else if (room == lvl_sign_23) image_xscale = new_scale;
}