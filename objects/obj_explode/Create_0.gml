/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(room_width * .5 - 192,  room_height * .5 + 60, x, y);

explode = false;

radius = 186;

xend = lengthdir_x(radius, image_angle) + x;
yend = lengthdir_y(radius, image_angle) + y;
scalar = .75;

if (room == lvl_explosion_18 || room == lvl_explosion_19 || room == lvl_explosion_20) delay = 0;

if (room == lvl_explosion_21)
{
	delay = irandom_range(1, room_speed * .2);
	scalar = random_range(.4, 1.5);
}