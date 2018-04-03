/// @description The class anything that can be controlled extends from
// You can write your code in this editor
inControl = false;
hsp = 0;
vsp = 0;
grav = 0.3;
walkSpeed = 5;
facing = 0;
origin_x = x;
origin_y = y;
capture_sound = snd_monkey;
mov_direction= 1;
image_xscale=1;
image_speed=.5;
effect_create_above(ef_spark, bbox_left + random(sprite_width), bbox_top + random(sprite_height), choose(0, 1), merge_colour(c_white, c_yellow, random(1)));