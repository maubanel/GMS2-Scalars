/// @description ease_in_out()
/// @arg {real} normalized real number between 0 and 1

/*******************************************************************************/
//
// This function takes a real number between 0 and 1 and returns a scalar
// that eases in and out
//
/******************************************************************************/



var val = argument0;

return val * (1 - val) * 4;