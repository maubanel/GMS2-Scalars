

#macro scl_sin_1 7
#macro scl_sin_2 8

var type = argument0;
var scalar_index = argument1;



if (type == scl_sin_1) return ((sin((scalar_index) * 2 * pi) + 1.0) / 2.0); // Return scaled sine
return (sin(scalar_index) + .75 * 2 * pi);
