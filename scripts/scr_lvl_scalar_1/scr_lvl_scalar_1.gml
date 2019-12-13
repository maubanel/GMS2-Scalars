draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "Fade In & Scale In - Room 1");
draw_set_font(fnt_reg);
draw_set_color(c_white)
draw_text(room_width * .5, 64, "Scalar changes values from 0 to 1 over 5 seconds and applied to image_alpha, xscale and yscale");


// LEFT SIDE OF LEVEL
draw_set_halign(fa_right);
draw_set_font(fnt_small);
var offset = 28;
var initial_y_pos = 250;
var y_pos = initial_y_pos;
var l_margin_x = 60;
var text_offset = 90;
var first_column_x = 6 +  text_offset + l_margin_x;
var second_column_x = 50 + first_column_x;

/*********************************/
//
//			TIMER
//
/*********************************/
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


/*********************************/
//
//			SQUARE
//
/*********************************/

// TITLE
draw_set_halign(fa_right);
y_pos += offset;
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
	
draw_text(((second_column_x - l_margin_x) * .5) + l_margin_x, initial_y_pos + (offset * .5) , "obj_square_fade_up");

// VARIABLES
draw_set_halign(fa_right);
initial_y_pos = y_pos;
y_pos += offset;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_alpha");

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);


draw_set_halign(fa_center);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , obj_room_1_fade_up.image_alpha);

/*********************************/
//
//			CIRCLE
//
/*********************************/

// TITLE
draw_set_halign(fa_right);
y_pos += offset;
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
	
draw_text(((second_column_x - l_margin_x) * .5) + l_margin_x, initial_y_pos + (offset * .5) , "obj_circle_scale_up");

// VARIABLES
draw_set_halign(fa_right);
initial_y_pos = y_pos;
y_pos += offset;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_xscale");
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_yscale");

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);


draw_set_halign(fa_center);


draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , obj_room_1_scale_up.image_xscale);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 1.5) , obj_room_1_scale_up.image_yscale);


/*********************************/
//
//		RIGHT HAND CODE
//
/*********************************/

var line_1 = "";
var code_y = 140;
var code_x = 580;
var s_wid = 0;
var line_height = 14;
draw_set_halign(fa_left);
draw_set_font(fnt_code_small);


//var tick = delta_time/1000000;
// new_index += tick/cycle_per_second
draw_set_color(c_gray);
draw_text(code_x, code_y, "// time in ms since last frame");
code_y += line_height;
draw_text(code_x, code_y, "var tick = delta_time/1000000;");
code_y += line_height * 2;
draw_text(code_x, code_y, "// time in ms /seconds to go from 0 to 1");
code_y += line_height;
draw_text(code_x, code_y, "new_index += tick/cycle_per_second;");

var line_height = 18;
draw_set_font(fnt_code);
code_y += line_height * 2;
draw_set_color(c_white);
draw_text(code_x, code_y, "SQUARE CREATE EVENT");
draw_set_color(c_green);
code_y += 20;
var line_1 = "// Start object faded out";
draw_text (code_x, code_y, line_1);
code_y += line_height;
// image_alpha = 0;
draw_set_color(c_lime);
var line_1 = "image_alpha "
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = ";";
s_wid += string_width(line_1);

code_y += line_height * 2;
draw_text(code_x, code_y, "CIRCLE CREATE EVENT");
draw_set_color(c_green);
code_y += 20;
var line_1 = "// Start object faded out";
draw_text (code_x, code_y, line_1);
code_y += line_height;
s_wid = 0;
// image_xscale = 0;
draw_set_color(c_lime);
var line_1 = "image_xscale "
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = ";";
s_wid += string_width(line_1);
code_y += line_height;
s_wid = 0;
// image_yscale = 0;
draw_set_color(c_lime);
var line_1 = "image_yscale "
draw_text (code_x, code_y, line_1);
s_wid = string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_1 = ";";
s_wid += string_width(line_1);
code_y += line_height * 2;
s_wid = 0;

draw_set_color(c_white);
draw_text(code_x, code_y, "SQUARE STEP EVENT");

//if (image_alpha != 1)
//{
//	image_alpha = update_scalar(0, 5, scl_once);
//}


draw_set_color(c_green);
code_y += line_height;
line_1 = "// Fade in object in 5 seconds";
draw_text (code_x, code_y, line_1);
code_y += line_height;
draw_set_color(c_user_funct);
line_1 = "if ";
draw_text(code_x, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_alpha ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "!= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "1";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_height;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text(code_x, code_y, line_1);
s_wid += string_width(line_1);

code_y += line_height;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "   image_alpha ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "update_scalar";
draw_text(code_x + s_wid, code_y, line_1);
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
line_1 = "5";
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
line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_height;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text(code_x, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
code_y += 2 * line_height;
draw_text(code_x, code_y, "CIRCLE STEP EVENT");

//if (image_xscale != 1 && image_yscale != 1)
//{
//	image_xscale = update_scalar(1, 5, scl_once);
//	image_yscale = update_scalar(2, 5, scl_once);
//}


draw_set_color(c_green);
code_y += line_height;
line_1 = "// Fade in object in 5 seconds";
draw_text (code_x, code_y, line_1);
code_y += line_height;
draw_set_color(c_user_funct);
line_1 = "if ";
draw_text(code_x, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_xscale ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "!= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "1 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "&& ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_lime);
line_1 = "image_yscale ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "!= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "1";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_height;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text(code_x, code_y, line_1);
s_wid += string_width(line_1);

code_y += line_height;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "   image_xscale ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "update_scalar";
draw_text(code_x + s_wid, code_y, line_1);
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
line_1 = "5";
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
line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_height;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "   image_yscale ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "update_scalar";
draw_text(code_x + s_wid, code_y, line_1);
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
line_1 = "5";
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
line_1 = ");";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_height;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text(code_x, code_y, line_1);
s_wid += string_width(line_1);

