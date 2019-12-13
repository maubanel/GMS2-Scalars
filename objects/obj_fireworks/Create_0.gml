/// @description Insert description here
// You can write your code in this editor

run_fireworks = true;

firework_repeat = 15;

alarm[0] = 1;

if (type == 1 || type == 3)
{
	direction = 85;	
	speed = 1;
}

else if (type == 2 )
{
	direction = 105;
	speed = 1;
}	

else if (type == 4 )
{
	direction = 90;
	speed = 1;
}

else if (type == 5)
{
	direction = 100;	
}


fire_ind = 0;

dir = 1;