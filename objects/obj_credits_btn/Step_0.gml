/// @description play credits if clicked
// You can write your code in this editor

if(mouse_check_button_released(mb_left)&& position_meeting(mouse_x,mouse_y,id)){
	
	room_goto(rm_credits);
}