#macro c_user_var make_color_rgb(179, 175, 255)
#macro c_internal_var make_color_rgb(255, 117, 122)
#macro c_user_funct make_color_rgb(255, 181, 98)
#macro c_internal_array make_color_rgb(255, 11, 255)
#macro c_local_var make_color_rgb(255, 249, 138)

var x_pos = argument[0];
var y_pos = argument[1];
var arg;
arg[0] = (argument_count > 2) ? argument[2] : "";
arg[1] = (argument_count > 3) ? argument[3] : "";
arg[2] = (argument_count > 4) ? argument[4] : "";
arg[3] = (argument_count > 5) ? argument[5] : "";
arg[4] = (argument_count > 6) ? argument[6] : "";
arg[5] = (argument_count > 7) ? argument[7] : "";
arg[6] = (argument_count > 8) ? argument[8] : "";
arg[7] = (argument_count > 9) ? argument[9] : "";
arg[8] = (argument_count > 10) ? argument[10] : "";
arg[9] = (argument_count > 11) ? argument[11] : "";
arg[10] = (argument_count > 12) ? argument[12] : "";
arg[11] = (argument_count > 13) ? argument[13] : "";
arg[12] = (argument_count > 14) ? argument[14] : "";
arg[13] = (argument_count > 15) ? argument[15] : "";


var s_wid = 0;

for (var i = 0; i < array_length_1d(arg); i+=2)
{
	if (arg[i] == "") break;
	draw_set_color(arg[i]);
	draw_text (x_pos + s_wid, y_pos, arg[i+1]);
	s_wid += string_width(arg[i+1]);	
}

return s_wid;