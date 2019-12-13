draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "Use of Scalar Example 3 - Room 27");
draw_set_font(fnt_reg);
draw_set_color(c_white)
draw_text(room_width * .5, 64, @"Add a scalar to a scalar and make the flashing ramp up");



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
var initial_y_pos = 160;
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
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "accel scalar");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "alpha scalar");
	
y_pos += offset;
//y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_alpha");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "blend scalar");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "non_red_color");
	
y_pos += offset;
//y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "red_color");


draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);

draw_set_halign(fa_center);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , obj_player.new_speed);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 1.5) , obj_player.new_a);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 2.5) , obj_player.image_alpha);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 3.5) , obj_player.new_b);
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 4.5) ,floor( obj_player.non_red_color));
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 5.5) , floor(obj_player.red_color));

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
var length = 0;


draw_set_halign(fa_left);
s_wid = 0;
draw_set_color(c_white);
draw_set_font(fnt_code);
draw_code(code_x, code_y, c_white, "OBJ_PLAYER STEP EVENT");
code_y += line_height ;

//var new_speed = update_scalar(2, 8, scl_once, 0, 1, 0, 1);
draw_code(code_x, code_y, c_green, "Create a scalar that goes from 1 to 0 and starts at 1 over 8 seconds");
code_y += line_height ;
length = draw_code(code_x, code_y, c_user_funct, "var ", c_local_var, "new_speed ", c_user_funct, "update_scalar ", c_white, "(", c_internal_var, "2", c_white, ", ", c_internal_var, "8");
length += draw_code(code_x + length, code_y, c_white, ", ", c_internal_var, "sct_once", c_white, ", ", c_internal_var, "0", c_white, ", ", c_internal_var, "1", c_white, ", ");
draw_code(code_x + length, code_y, c_internal_var, "0", c_white, ", ", c_internal_var, "1", c_white, ");");

//new_speed = new_speed * .88 + .12;
code_y += line_height * 2;
draw_code(code_x, code_y, c_green, "Rescale to go from 1 to .12 as we want the fastest flash to be .12 frames per second");
code_y += line_height
length = draw_code(code_x, code_y, c_local_var, "new_speed ", c_white, "= ", c_local_var, "new_speed ", c_white, "* .", c_internal_var, "88 ", c_white, "+ .", c_internal_var, ".12");
draw_code(code_x + length, code_y, c_white, ";");

//var new_a = update_scalar(0, new_speed, scl_bounce_repeat, 0, 0, 1, 1);
code_y += line_height * 2;
length = draw_code(code_x, code_y, c_gray, "var  new_a  =  update_scalar(0, ", c_gray, "new_speed, scl_bounce_repeat, 0, 0, 1, 1);");

code_y += line_height;
//	image_alpha = new_a;
draw_code (code_x, code_y, c_gray, "image_alpha = new_a;");

code_y += line_height * 2;

//var new_b = update_scalar(18, scl_once);
length = draw_code (code_x, code_y, c_gray, "ar new_b = update_scalar(18, scl_once);");

code_y += line_height

//var non_red_color = 255 - (new_b * 255);;
code_y += line_height;
length = draw_code(code_x, code_y, c_gray, "var non_red_color = 255 - (new_b * 255);;");

code_y += line_height

//var red_color = new_b * 105 + 150;
code_y += line_height;
length = draw_code(code_x, code_y, c_gray, "var red_color = new_b * 105 + 150;");

//image_blend = make_color_rgb(red_color, non_red_color, non_red_color);
code_y += line_height;
length = draw_code(code_x, code_y, c_gray, "image_blend = make_color_rgb(red_color, non_red_color, non_red_color);");