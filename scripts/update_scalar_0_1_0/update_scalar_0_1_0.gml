/// @description get_scalar()
/// @arg {real} cyles_per_second		Cyles per second to go from 0 to 1 to 0
/// @arg {int} scalar_index			Integer to keep each scalar separate, 

/*******************************************************************************/
//
// This function is used to return a value between 0 to 1 to 0 as one  cycle
//
/******************************************************************************/


var cycle_per_second = argument0; //cycles per second
var index = floor(argument1);

// Since the index variable creates a new array, we want to limit potential size and
//	make sure negative values can't be passed
if (index < 0 || index > 100)
{
	show_error("scalar_index argument is " + string(index) + " in update_scalar() but value cannot be a negative number or exceed 100", true);	
}

// Get time since last frame
var tick = delta_time/1000000; // Gets time since last frame in milliseconds


// If this function has never been called create an array to keep track of all instances of scalars in a single object
if (!variable_instance_exists(id, "scr_scalar_val"))
{
	scr_scalar_val[index] = 0;
}

// Check to see if this is a new instance of the scalar being called and making sure index is available
else if (index > array_length_1d(scr_scalar_val) - 1)
{
	scr_scalar_val[index] = 0;
}

if (!variable_instance_exists(id, "scr_scalar_sine"))
{
	scr_scalar_sine[index] = 1;
}
else if (index > array_length_1d(scr_scalar_sine) - 1)
{
	scr_scalar_sine[index] = 1;
}

// Add to scalar in appropriate cycles per second scale
scr_scalar_val[index] += tick/cycle_per_second * scr_scalar_sine[index] * 2; // * 2 as it 

// Stop at 1 and go back to 0
if (scr_scalar_val[index] >= 1)
{
	scr_scalar_val[index] = 1;
	scr_scalar_sine[index] *= -1;
}

// Stop at 0 and go back to 1
else if (scr_scalar_val[index] <= 0)
{
	scr_scalar_val[index] = 0;
	scr_scalar_sine[index] *= -1;
}

show_debug_message(scr_scalar_val[index]);
return scr_scalar_val[index];
