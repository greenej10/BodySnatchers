/// @description  Keeps track of the current time amoung other things

//Logic for when level is complete

if (global.gamePaused == false && keyboard_check_pressed(vk_escape))

{
    instance_deactivate_all(true);
	instance_activate_object(self);
    global.gamePaused = true;
	//sprite_index = playButtonSprite;
}
else if (global.gamePaused == true && keyboard_check_pressed(vk_escape))
{
    instance_activate_all();
    global.gamePaused = false;
	//sprite_index = pauseButtonSprite;
}
// Skip level cheat
else if (global.gamePaused == true && keyboard_check_pressed(vk_f1)){
	
	room_goto_next();
	
}

//Handle buttons if level is complete

if(end_time){
		var reWidth = 458/2;
		var reHeight = 94/2;
	if (device_mouse_check_button(0, mb_left))
   {
   if( device_mouse_x_to_gui(0) <((1024/2))){
	  room_restart();
   }
	if(device_mouse_x_to_gui(0) >((1024/2)) ){
		
		room_goto_next();
	}
   }
}


//Handle buttons if level if dead
if(!gamePaused){
if(obj_monk.dead){
		var reWidth = 458/2;
		var reHeight = 94/2;
	if (device_mouse_check_button(0, mb_left))
   {
   if( device_mouse_x_to_gui(0) >((1024/2))){
	  room_restart();
   }
	if(device_mouse_x_to_gui(0) <((1024/2)) ){
		
		room_goto(rm_mainMenu);
	}
   }
}

}