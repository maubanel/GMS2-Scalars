/// @description get_scalar()
/// @arg {real} normalized real number between 0 and 1
/// @arg {int} amount - 1 shallow to 4 steep

/*******************************************************************************/
//
// This function is used to return a value between 0 to 1 then back to 0
//
/******************************************************************************/



var val = argument0;
var amount = clamp(argument1, 0 ,4);

switch(amount)
{
	case 0:
	return val; // No ease out
	break;
	
	case 1:
	return  val * (2 - val); // Ease Out Quadric
	break;
	
	case 2:
	return (--val) * val * val + 1; // Ease Out Cubic
	break;
	
	case 3:
	return 1 - (--val) * val * val * val; // Ease Out Quart
	break;
	
	case 4:
	return 1 + (--val) * val * val * val * val; // Ease Out Quint
	break;
}