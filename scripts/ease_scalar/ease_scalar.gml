/// @description get_scalar()
/// @arg {macro} type		ease_in, ease_out or ease_in_out
/// @arg {real} scalar	real number between 0 and 1 or -1 and 1
/// @arg {int} amount		1 shallow to 4 steep

/*******************************************************************************/
//
// This function is used to return a value between 0 to 1 then back to 0
//
/******************************************************************************/

#macro eas_in 0
#macro eas_out 1
#macro eas_in_out 2

var type = argument0;
var val = argument1;
var amount = clamp(argument2, 0 ,4);

switch(type)
{
	case eas_in :
		switch(amount)
		{
			case 0:
			return val; // No ease
			break;
	
			case 1:
			return val * val; // Ease In Quadric
			break;
	
			case 2:
			return val * val * val; // Ease In Cubic
			break;
	
			case 3:
			return val * val * val * val; // Ease In Quart
			break;
	
			case 4:
			return val * val * val * val * val; // Ease In Quint
			break;
		}
	break;
	
	case eas_out :
		switch(amount)
		{
			case 0:
			return val; // No ease out
			break;
	
			case 1:
			return  (val > 0) ? val * (2 - val) : val * (2 + val) ; // Ease Out Quadric
			break;
	
			case 2:
			return (val > 0) ? (--val) * val * val + 1 : (++val) * val * val - 1 ; // Ease Out Cubic
			break;
	
			case 3:
			return (val > 0) ? 1 - (--val) * val * val * val : -(1 - (++val) * val * val * val); // Ease Out Quart
			break;
	
			case 4:
			return (val > 0) ? 1 + (--val) * val * val * val * val : -(1 - (++val) * val * val * val * val); // Ease Out Quint
			break;
		}
	break;
	
	case eas_in_out :
		switch(amount)
		{
			case 0:
			return val; // No ease 
			break;
	
			case 1:
			return  (val > 0) ?  ((val < .5) ? 2 * val * val : -1 + (4 - 2 * val) * val) : ((val > -.5) ? 2 * val * -val : 1 + (4 + 2 * val) * val) ; // Ease In Out Quadric
			break;
	
			case 2:
			return  (val > 0) ?  ((val < .5) ? 4 * val * val * val : (val - 1)*(2 * val - 2)*(2 * val - 2) + 1) : ((val > -.5) ? 4 * val * val * val : (val + 1)*(2 * val + 2)*(2 * val + 2) - 1); // Ease In Out Cubic
			break;
	
			case 3:
			return (val > 0) ? ((val < .5) ? 8 * val * val * val * val : 1 - 8 * (--val) * val * val * val) : ((val > -.5) ? 8 * -val * val * val * val : -( 1 - 8 * (++val) * val * val * val)); // Ease In Out Quart
			break;
	
			case 4:
			return (val > 0) ? ((val < .5) ? 16 * val * val * val * val * val : 1 + 16 * (--val) * val * val * val * val) : ((val > -.5) ? 16 * val * val * val * val * val : -(1 - 16 * (++val) * val * val * val * val)); // Ease In Out Quint
			break;
		}
	break;
	
	
	
}