/// @description The player character
// You can write your code in this editor
event_inherited();

health = 3; // The health value of the player
inControl = true;//The player is in control at all times
currentControl = 0;
cap_time = 500;
drownTime = 0;
dead = false;

enum state {
damage,normal	
}
status = state.normal;