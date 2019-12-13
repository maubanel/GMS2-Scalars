/// @function update_scalar(cycles_per_second, scalar_index, type, start_val, end_val)
/// @description Creates a new array variable that returns a scalar real number that interpolates from start to end value over time
/// @arg {int} scalar_index			Integer to keep each scalar separate
/// @arg {real} cyles_per_second	Cyles per second to go from 0 to 1 to 0
/// @arg {macro} type				scl_once, scl_bounce, scl_bounce_repeat
/// @arg {real}	repeat_delay		how many seconds between bounces
/// @arg {real} begin_val			number that scalar starts at
/// @arg {real} end_val				number that scalar ends with
/// @arg {real}	start_val			set if you want to start in the middle of range


/*******************************************************************************/
//
// This function is used to return a value between 0 to 1 to 0 as one  cycle
//	type defaults to scl_bounce_repeat
//	start_val defaults to 0
//  end_val defaults to 1
//
/******************************************************************************/


#macro scl_once 0
#macro scl_bounce 1
#macro scl_bounce_repeat 2
#macro scl_bounce_repeat_delay 3

var index = floor(argument[0]); // index in scr_scalar_val array
var cycle_per_second = argument[1]; //cycles per second
var type = (argument_count > 2) ? argument[2] : scl_bounce_repeat; // what type of scalar?
var repeat_delay = (argument_count > 3) ? argument[3] : 1; // number of seconds to delay between cycles
var begin_val = (argument_count > 4) ? argument[4] : 0; 
var end_val = (argument_count > 5) ? argument[5] : 1; 
var start_val = (argument_count > 6) ? argument[6] : begin_val;

// Since the index variable creates a new array, we want to limit potential size and
//	make sure negative values can't be passed
if (index < 0 || index > 10)
{
	show_error("scalar_index argument is " + string(index) + " in update_scalar() but value cannot be a negative number or exceed 10", true);	
}

if (end_val == begin_val)
{
	show_error("end_val and begin_val in update_scalar() must be different", true);
}
// If this function has never been called create an array to keep track of all instances of scalars in a single object
if (!variable_instance_exists(id, "scr_scalar_val"))
{
	scr_scalar_val[index, 0] = start_val; // counter updated every frame
	scr_scalar_val[index, 1] = end_val > begin_val ? 1 : -1; // sine for adding or subtracting updated every frame
	scr_scalar_val[index, 2] = start_val; // reset starting value
	scr_scalar_val[index, 3] = end_val > begin_val ? 1 : -1; // sine value for resetting
	scr_scalar_val[index, 4] = false; // boolean for tracking single bounce
	scr_scalar_val[index, 5] = repeat_delay; // delay timer
}

// Check to see if this is a new instance of the scalar being called and making sure index is available
else if (index > array_height_2d(scr_scalar_val) - 1 || array_length_2d(scr_scalar_val, index)	< 6)
{
	scr_scalar_val[index, 0] = start_val; // counter updated every frame
	
	// Used to count up or down for bounce
	scr_scalar_val[index, 1] = end_val > begin_val ? 1 : -1; // sine for adding or subtracting updated every frame
	scr_scalar_val[index, 2] = start_val; // reset starting value
	scr_scalar_val[index, 3] = end_val > begin_val ? 1 : -1; // sine value for resetting
	scr_scalar_val[index, 4] = false; // boolean for tracking single bounce
	scr_scalar_val[index, 5] = repeat_delay; // delay timer
}

// If playing once and value at the end, then just return the value as transition is complete
if (scr_scalar_val[index, 0] >= end_val && end_val > begin_val && type == scl_once) {return end_val;}
else if (scr_scalar_val[index, 0] <= end_val && end_val < begin_val && type == scl_once) {return end_val;}

// Get time since last frame
var tick = delta_time/1000000; // Gets time since last frame in milliseconds


// If bouncing then we need to add the return portion (* 2) for an entire cycle
var time_adjust = (type == scl_once) ? 1 : 2;

// Add to scalar in appropriate cycles per second scale
if (type != scl_bounce_repeat_delay)
{
	scr_scalar_val[index, 0] += tick/cycle_per_second * scr_scalar_val[index, 1] * time_adjust;
}
else if (type == scl_bounce_repeat_delay)
{
	if (scr_scalar_val[index, 5] == repeat_delay)
	{
		scr_scalar_val[index, 0] += tick/cycle_per_second * scr_scalar_val[index, 1] * time_adjust;
	}
}

// Clamp for single bounce
if (type == scl_bounce && end_val > begin_val && scr_scalar_val[index, 4]) scr_scalar_val[index, 0] = clamp(scr_scalar_val[index, 0], begin_val, end_val);
else if (type == scl_bounce && end_val < begin_val && scr_scalar_val[index, 4]) scr_scalar_val[index, 0] = clamp(scr_scalar_val[index, 0], end_val, begin_val);

// Logic for bounce repeat
if (type == scl_bounce_repeat)
{
	if (end_val > begin_val)
	{
		// Stop at end and go back to start
		if (scr_scalar_val[index, 0] >= end_val)
		{
			scr_scalar_val[index, 0] = end_val;
			scr_scalar_val[index, 1] *= -1;
		}

		// Stop at 0 and go back to 1
		else if (scr_scalar_val[index, 0] <= begin_val)
		{
			scr_scalar_val[index, 0] = begin_val;
			scr_scalar_val[index, 1] *= -1;
		}
	}
	else
	{
		// Stop at end and go back to start
		if (scr_scalar_val[index, 0] <= end_val)
		{
			scr_scalar_val[index, 0] = end_val;
			scr_scalar_val[index, 1] *= -1;
		}

		// Stop at 0 and go back to 1
		else if (scr_scalar_val[index, 0] >= begin_val)
		{
			scr_scalar_val[index, 0] = begin_val;
			scr_scalar_val[index, 1] *= -1;
		}
	}
}

// Logic for bounce repeat delay
else if (type == scl_bounce_repeat_delay)
{
	if (end_val > begin_val)
	{
		// Stop at end and go back to start
		if (scr_scalar_val[index, 0] >= end_val)
		{
			if (scr_scalar_val[index, 5] > 0)
			{
				scr_scalar_val[index, 5] -= tick;	
				scr_scalar_val[index, 0] = end_val;
			}
			else 
			{
				scr_scalar_val[index, 1] *= -1;
				scr_scalar_val[index, 5] = repeat_delay;
			}
		}

		// Stop at 0 and go back to 1
		else if (scr_scalar_val[index, 0] <= begin_val)
		{
			if (scr_scalar_val[index, 5] > 0)
			{
				scr_scalar_val[index, 5] -= tick;	
				scr_scalar_val[index, 0] = begin_val;
			}
			else 
			{
				scr_scalar_val[index, 1] *= -1;
				scr_scalar_val[index, 5] = repeat_delay;
			}
		}
	}
	else
	{
		// Stop at end and go back to start
		if (scr_scalar_val[index, 0] <= end_val)
		{
			if (scr_scalar_val[index, 5] > 0)
			{
				scr_scalar_val[index, 5] -= tick;	
				scr_scalar_val[index, 0] = end_val;
			}
			else 
			{
			scr_scalar_val[index, 1] *= -1;
			scr_scalar_val[index, 5] = repeat_delay;
			}
		}

		// Stop at 0 and go back to 1
		else if (scr_scalar_val[index, 0] >= begin_val)
		{
			if (scr_scalar_val[index, 5] > 0)
			{
				scr_scalar_val[index, 5] -= tick;	
				scr_scalar_val[index, 0] = begin_val;
			}
			else 
			{
				scr_scalar_val[index, 1] *= -1;
				scr_scalar_val[index, 5] = repeat_delay;
			}
		}
	}
}

else if (type == scl_bounce && !scr_scalar_val[index, 4])
{
	if (scr_scalar_val[index, 0] > end_val || scr_scalar_val[index, 0] < begin_val)
	{
		scr_scalar_val[index, 1] *= -1;
		scr_scalar_val[index, 4] = true;
	}
}

return scr_scalar_val[index, 0];
