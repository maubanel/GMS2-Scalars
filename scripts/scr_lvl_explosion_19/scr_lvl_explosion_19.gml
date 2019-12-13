draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "Use of Scalar Example 1 - Room 19");
draw_set_font(fnt_reg);
draw_set_color(c_white)
draw_text(room_width * .5, 64, @"Explosion to land triangles within circumference of two outer circles
Using scalar to go to pixel perfect xend, yend position");

if (instance_exists(obj_bomb))
{
	if (!obj_bomb.blow_up)
	{
		draw_set_color(c_lime);
		draw_set_font(fnt_reg);
		var new_alpha = update_scalar(0, 2, scl_bounce_repeat);
		new_alpha = ease_scalar(eas_in_out, new_alpha, 2);
		draw_set_alpha(new_alpha * .75 + .25);
		draw_text(room_width * .5 - 192, 300, "Left Click On Bomb To Detonate!");
		draw_set_alpha(1);
	}
	else reset_scalar(0);
}

var line_1 = "";
var code_y = 140;
var code_x = 550;
var s_wid = 0;
var line_height = 14;
draw_set_halign(fa_left);
draw_set_font(fnt_code_small);

	




var line_height = 18;

code_y += line_height * 2;
draw_set_color(c_white);
draw_set_font(fnt_code);
draw_text(code_x, code_y, "TRIANGLE STEP EVENT");
draw_set_color(c_green);
code_y += line_height;

draw_set_font(fnt_code_small);
line_1 = "// Create scalar value 0 to 1 over 3/4 of a second";
draw_text (code_x, code_y, line_1);
code_y += line_height;
draw_set_font(fnt_code);
//var new_pos = update_scalar(0, .75, scl_once);
draw_set_color(c_user_funct);
line_1 = "var ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_local_var);
line_1 = "new_pos ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "update_scalar";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = ".75";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "scl_once";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);

draw_set_color(c_green);
code_y += line_height * 2;
code_x += 30;
draw_set_font(fnt_code_small);
line_1 = "// Lerp to exact xend position linearly";
draw_text (code_x, code_y, line_1);


draw_set_font(fnt_code);
code_y += line_height ;
code_x += 10;
s_wid = 0;
//	x = lerp(xstart, xend, new_pos);
draw_set_color(c_lime);
line_1 = "x ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "lerp";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "xstart";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "xend";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_local_var);
line_1 = "new_pos";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);


code_y += line_height;
code_x += 10;
s_wid = 0;
//		y = lerp(ystart, yend, new_pos);
draw_set_color(c_lime);
line_1 = "y ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "lerp";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "ystart";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "yend";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_local_var);
line_1 = "new_pos";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);