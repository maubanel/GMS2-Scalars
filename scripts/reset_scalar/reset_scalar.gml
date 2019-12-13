/// @function reset_scalar(scalar_index)
/// @description Resets scalar array created by update_scalar()
/// @arg {int} scalar_index			Integer to keep each scalar separate, 


/*******************************************************************************/
//
// This function resets the current index to starting point 
//  and resets the sine back to its original value
//
/******************************************************************************/

var index = floor(argument0);
//show_debug_message(array_height_2d(scr_scalar_val) - 1);
if (!variable_instance_exists(id, "scr_scalar_val") || (index < 0 || index > 10) || index > array_height_2d(scr_scalar_val) - 1 || array_length_2d(scr_scalar_val, index) < 6)
{
	return false;	
}

// In case there are gaps between indexes with incomplete arrays
else if (variable_instance_exists(id, "scr_scalar_val"))
{
	if (array_length_2d(scr_scalar_val, index)	< 6)
	{
		return false;	
	}
}


//show_debug_message(string(array_length_2d(scr_scalar_val, index)) + " - " + string(array_height_2d(scr_scalar_val) - 1));
// Resent counter
scr_scalar_val[index, 0] = scr_scalar_val[index, 2];

// Resent sine
scr_scalar_val[index, 1] = scr_scalar_val[index, 3];

return true; // index exists and is reset

