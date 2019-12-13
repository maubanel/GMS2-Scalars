draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "Use of Scalar Example 3 - Room 25");
draw_set_font(fnt_reg);
draw_set_color(c_white)
draw_text(room_width * .5, 64, @"Change image_alpha to indicate player taking damage
Walk into red square to take damage");



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
	
if (obj_player.is_getting_hit)
{
	draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , string(floor(seconds)));
}
else 
{
	draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , "0");
}

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
	
draw_text(((second_column_x - l_margin_x) * .5) + l_margin_x, initial_y_pos + (offset * .5) , "obj_player");

// VARIABLES
draw_set_halign(fa_right);
initial_y_pos = y_pos;
y_pos += offset;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "scalar");
	
y_pos += offset;
//y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_alpha");

//y_pos += offset;
////y_pos += offset;
//draw_line(l_margin_x, y_pos, second_column_x, y_pos);
//draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_xscale");

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);

draw_set_halign(fa_center);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , obj_player.new_a);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 1.5) , obj_player.image_alpha);
/*********************************/
//
//			CODE ON RIGHT
//
/*********************************/

var line_1 = "";
var code_y = 140;
var code_x = 340;
var s_wid = 0;
var line_height = 18;


draw_set_halign(fa_left);
s_wid = 0;
draw_set_color(c_white);
draw_set_font(fnt_code);
draw_code(code_x, code_y, c_white, "OBJ_PLAYER STEP EVENT");

code_y += line_height ;

draw_code(code_x, code_y, c_green, "Set scalar for image alpha");

code_y += line_height;
draw_code(code_x, code_y, c_green, "Player dies after taking 8 seconds of damage");

code_y += line_height * 2;

//var new_a = update_scalar(0, new_speed, scl_bounce_repeat, 0, 0, 1, 1);
draw_code(code_x, code_y, c_green, "Go from 0 to 1 and back but start at 1");

code_y += line_height;

var length = draw_code(code_x, code_y, c_user_funct, "var ", c_local_var, "new_a ", c_white, "= ", c_user_funct, "update_scalar", c_white, " (", c_internal_var, 0, c_white, ", ");

length += draw_code (code_x + length, code_y, c_internal_var, "1", c_white, ", ", c_internal_var, "scl_bounce_repeat", c_white, ", ", c_internal_var, "0", c_white, ", ", c_internal_var, "0");

draw_code(code_x + length, code_y, c_white, ", ", c_internal_var, "1", c_white, ", ", c_internal_var, "1", c_white, ");");

code_y += line_height;
//	image_alpha = new_a;
draw_code (code_x, code_y, c_lime, "image_alpha ", c_white, "= ", c_local_var, "new_a", c_white, ";");
