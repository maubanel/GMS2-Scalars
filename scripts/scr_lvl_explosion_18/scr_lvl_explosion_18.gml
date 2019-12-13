draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "Use of Scalar Example 1 - Room 18");
draw_set_font(fnt_reg);
draw_set_color(c_white)
draw_text(room_width * .5, 64, @"Explosion to land triangles within circumference of two outer circles
Using move_towards_point(xend, yend) to get to point in circle");

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
draw_text(code_x, code_y, "TRIANGLE CREATE EVENT");
draw_set_color(c_green);
code_y += line_height;

draw_set_font(fnt_code_small);
line_1 = "// Calculate distance from arrows to circumference of circle";
draw_text (code_x, code_y, line_1);
code_y += line_height;
draw_set_font(fnt_code);
//radius = 184;
draw_set_color(c_user_var);
line_1 = "radius ";
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "184";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = ";";
s_wid += string_width(line_1);

code_y += line_height * 2;
code_x += 20;
s_wid = 0;
//xend = lengthdir_x(radius, image_angle) + x;
draw_set_color(c_user_var);
line_1 = "xend ";
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "lengthdir_x";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "radius";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_angle";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ") + ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "x";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);

code_y += line_height;
code_x += 20;
s_wid = 0;
//yend = lengthdir_y(radius, image_angle) + y;
draw_set_color(c_user_var);
line_1 = "yend ";
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "lengthdir_y";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "radius";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_angle";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ") + ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "y";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);

code_x += 20;
code_y += line_height * 3;
s_wid = 0;
draw_text(code_x, code_y, "TRIANGLE STEP EVENT");
draw_set_color(c_green);
code_y += line_height;



//if (distance_to_point(xend, yend) >= 5)
code_y += line_height;
code_x += 20;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "if ";
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "distance_to_point";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = "(";
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
draw_set_color(c_user_var);
line_1 = "yend";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ") >= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "6";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);


//{
code_y += line_height;
//code_x += 20;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text(code_x + s_wid, code_y, line_1);


//	move_towards_point(xend, yend, 5);
code_y += line_height;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "  move_towards_point";
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "xend";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = ",";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "yend";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ",";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "6";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);

//}
code_y += line_height;
//code_x += 20;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text(code_x + s_wid, code_y, line_1);

//else
code_y += line_height * 2;
code_x += 10;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "else";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_height;

draw_set_font(fnt_code_small);
draw_set_color(c_green);
line_1 = "// Player vibrates, so we freeze when close to target";
draw_text (code_x, code_y, line_1);

//{
code_y += line_height;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text(code_x + s_wid, code_y, line_1);

//	speed = 0;
code_y += line_height;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "   soeed ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text(code_x + s_wid, code_y, line_1);


//}
code_y += line_height;
//code_x += 20;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text(code_x + s_wid, code_y, line_1);
		