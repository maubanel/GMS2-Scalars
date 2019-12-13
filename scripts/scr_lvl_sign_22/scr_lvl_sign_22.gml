draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "Use of Scalar Example 2 - Room 22");
draw_set_font(fnt_reg);
draw_set_color(c_white)
draw_text(room_width * .5, 64, @"Change image_xscale sign to simulate spinning object from 1 to -1 and back
Change by brute force");


var line_1 = "";
var code_y = 100;
var code_x = 550;
var s_wid = 0;
var line_height = 18;
draw_set_halign(fa_left);
draw_set_font(fnt_code_small);

/*********************************/
//
//			TIMER
//
/*********************************/
// LEFT SIDE OF LEVEL
draw_set_halign(fa_right);
draw_set_font(fnt_small);
var offset = 28;
var initial_y_pos = 260;
var y_pos = initial_y_pos;
var l_margin_x = 60;
var text_offset = 110;
var first_column_x = 6 +  text_offset + l_margin_x;
var second_column_x = 50 + first_column_x;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5 , "time-seconds");

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);

var add = "";
if (seconds < 10) add = "0";


draw_set_halign(fa_center);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , string(floor(seconds)));

// TITLE
draw_set_halign(fa_right);
y_pos += offset * 1.5;
initial_y_pos = y_pos;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_set_color(c_green);
draw_rectangle(l_margin_x + 1, initial_y_pos + 1, second_column_x -1, y_pos - 1, false);

draw_set_color(c_white);
draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);

draw_set_halign(fa_center);
	
draw_text(((second_column_x - l_margin_x) * .5) + l_margin_x, initial_y_pos + (offset * .5) , "obj_sign");

// VARIABLES
draw_set_halign(fa_right);
initial_y_pos = y_pos;
y_pos += offset;

//draw_line(l_margin_x, y_pos, second_column_x, y_pos);
//draw_text(l_margin_x + text_offset, y_pos - offset * .5, "linear");
	
//y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_xscale");

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);

draw_set_halign(fa_center);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , obj_welcome.image_xscale);
//draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 1.5) , ease_in_1);

/*********************************/
//
//			CODE ON RIGHT
//
/*********************************/

draw_set_halign(fa_left);
code_y += line_height * 2;
draw_set_color(c_white);
draw_set_font(fnt_code);
draw_text(code_x, code_y, "SIGN CREATE EVENT");
draw_set_color(c_green);
code_y += line_height;

draw_set_font(fnt_code_small);
line_1 = "// Determines whether adding or subtracting";
draw_text (code_x, code_y, line_1);


//sine = -1;
draw_set_font(fnt_code);
code_y += line_height;
s_wid = 0;
draw_set_color(c_user_var);
line_1 = "sine ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "-1";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text (code_x + s_wid, code_y, line_1);

code_y += line_height * 2;
draw_set_font(fnt_code_small);
draw_set_color(c_green);
line_1 = "// Percent per frame of change in image_xscale";
draw_text (code_x, code_y, line_1);

//scale_speed = .02;
draw_set_font(fnt_code);
code_y += line_height;
s_wid = 0;
draw_set_color(c_user_var);
line_1 = "scale ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = ".02";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text (code_x + s_wid, code_y, line_1);



draw_set_font(fnt_code);
code_y += line_height * 3;
s_wid = 0;
draw_set_color(c_white);
draw_set_font(fnt_code);
draw_text(code_x, code_y, "TRIANGLE STEP EVENT");

//image_xscale += scale_speed * sine;
code_y += line_height;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "image_xscale ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "+= ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "scale_speed ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "* ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "sine";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);draw_set_color(c_white);
line_1 = ";";
draw_text (code_x + s_wid, code_y, line_1);

//if (image_xscale <= -1 || image_xscale >= 1)
code_y += line_height ;
s_wid = 0;
draw_set_color(c_green)
draw_set_font(fnt_code_small);
line_1 = "   // Change directions of image_xscale";
draw_text (code_x, code_y, line_1);
code_y += line_height;
draw_set_font(fnt_code);

draw_set_color(c_user_funct);
line_1 = "if ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_xscale ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "<= ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "-1 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "|| ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_xscale ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ">= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "1";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);

//{
code_y += line_height;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text (code_x, code_y, line_1);


code_y += line_height;
draw_set_color(c_green);
draw_set_font(fnt_code_small);
line_1 = "   // Reverse direction";
draw_text (code_x, code_y, line_1);

//	sine *= -1;	
draw_set_font(fnt_code);
code_y += line_height;
s_wid = 0;
draw_set_color(c_local_var);
line_1 = "   sine ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "+= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "-1";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text (code_x + s_wid, code_y, line_1);

//}
code_y += line_height;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text (code_x, code_y, line_1);
