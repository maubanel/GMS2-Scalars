/// @description ease_in_out()
/// @arg {real} normalized real number between 0 and 1
/// @arg {int} amount - 1 shallow to 4 steep

/*******************************************************************************/
//
// This function takes a real number between 0 and 1 and returns a scalar
// that eases in and out
//
/******************************************************************************/



var val = argument0;
var amount = clamp(argument1, 0 ,4);

switch(amount)
{
	case 0:
	return val; // No ease 
	break;
	
	case 1:
	return  val < .5 ? 2 * val * val : -1 + (4 - 2 * val) * val; // Ease In Out Quadric
	break;
	
	case 2:
	return val < .5 ? 4 * val * val * val : (val - 1)*(2 * val - 2)*(2 * val - 2) + 1; // Ease In Out Cubic
	break;
	
	case 3:
	return val < .5 ? 8 * val * val * val * val : 1 - 8 * (--val) * val * val * val; // Ease In Out Quart
	break;
	
	case 4:
	return val < .5 ? 16 * val * val * val * val * val : 1 + 16 * (--val) * val * val * val * val; // Ease In Out Quint
	break;
}