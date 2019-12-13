/// @description Draw room non GUI elements

// Draw targets for explosion rooms
if (room == lvl_explosion_18 || room == lvl_explosion_19 || room == lvl_explosion_20 || room == lvl_explosion_21)
{
	draw_set_color(c_yellow);
	draw_circle(room_width/2-192, room_height/2 + 60, 300, true);	
	draw_circle(room_width/2-192, room_height/2 + 60, 270, true);
	
	draw_set_color(c_blue);
	draw_circle(room_width/2-192, room_height/2 + 60, 96, true);
	draw_set_color(c_white);
}