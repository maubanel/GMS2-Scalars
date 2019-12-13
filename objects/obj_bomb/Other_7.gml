/// @description Insert description here
// You can write your code in this editor
instance_destroy();
show_debug_message("destroy bomb " + string(id));

effect_create_below(ef_explosion, x, y, 20, c_red);
effect_create_below(ef_smoke, x, y, 20, c_white);

effect_create_below(ef_explosion, x + 32, y, 20, c_red);
effect_create_below(ef_smoke, x, y, 20, c_white);

effect_create_below(ef_explosion, x - 32, y, 20, c_red);
effect_create_below(ef_smoke, x, y, 20, c_white);

effect_create_below(ef_explosion, x, y + 32, 20, c_red);
effect_create_below(ef_smoke, x, y - 32, 20, c_white);

effect_create_below(ef_explosion, x + 32, y + 64, 20, c_red);
effect_create_below(ef_smoke, x, y, 20, c_white);

effect_create_below(ef_explosion, x + 32, y - 64, 20, c_red);
effect_create_below(ef_smoke, x, y, 20, c_white);

effect_create_below(ef_explosion, x - 64, y - 32, 20, c_red);
effect_create_below(ef_smoke, x, y, 20, c_white);

effect_create_below(ef_explosion, x + 64, y - 32, 20, c_red);
effect_create_below(ef_smoke, x, y - 32, 20, c_white);

obj_explode.explode = true;

blow_up = false;

alarm[2] = -1;
alarm[1] = -1;
alarm[0] = -1;