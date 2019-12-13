/// @description Insert description here
// You can write your code in this editor
run_fireworks = true;
alarm[0] = 1;
x = xstart;
y = ystart;

if (fire_ind > 0) reset_scalar(0);

if (type == 4 || type == 5)
{
	if (type == 4) direction = 90;	
	if (type == 5) direction = 100;
}
