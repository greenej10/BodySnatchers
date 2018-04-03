/// @description Gives control back to the player after enough time.
// You can write your code in this editor

with(currentControl)
{
	alarm_set(2,300);
	inControl = false;
}
audio_stop_sound(snd_timer);
inControl = true;
currentControl = 0;
visible = 1;
y = y -15;
