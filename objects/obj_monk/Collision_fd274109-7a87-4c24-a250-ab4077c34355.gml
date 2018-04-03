/// @description Insert description here
// You can write your code in this editor

obj_monk.cap_time = obj_monk.cap_time+ 100;
show_debug_message(obj_monk.cap_time);
audio_play_sound(snd_collect,0,0);
with(other){instance_destroy();}