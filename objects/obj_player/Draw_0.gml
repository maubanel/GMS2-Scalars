/// @description Insert description here
// You can write your code in this editor
if (obj_player.is_dead)
{
	draw_set_font(fnt_reg);
	draw_set_halign(fa_center);
	draw_text(x, y - sprite_height * .4, "I'm Dead!");
}

draw_self();