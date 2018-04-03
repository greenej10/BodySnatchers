/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(keyboard_check_pressed(ord("Z"))){
	/// @description Handles Gorrilla Breaking and lifting stuff


//Handles Breaking Block
//right side
if(inControl){


brick = instance_nearest(x+((facing)*5),y,obj_break_block);
if(brick)
{
	if(distance_to_object(obj_break_block)<=20){
	with(brick)instance_destroy();
	}
}
//left side


//Handles lifting liftable blocks

if(!lifting){

brick = instance_nearest(x+((facing)*5),y,obj_lift_block);
if(distance_to_object(obj_lift_block)<=20){

if(brick)
{
	brick.liftedBy = self;
	lifting = brick;
	
}}

}
else{

	lifting.liftedBy = 0;
	lifting.x = x+(facing*60);
	lifting = false;
}
}
	
}