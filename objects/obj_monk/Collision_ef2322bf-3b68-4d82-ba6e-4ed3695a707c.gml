/// @description Insert description here
// You can write your code in this editor

if(status == state.normal){
	audio_play_sound(snd_monk_hurt,0,0);
	status = state.damage;
	health-=1;
	alarm[1] = 100;// 1 second of invul
}
//destroy instance/blowup mine?