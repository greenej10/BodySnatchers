left = keyboard_check(vk_left);
right = keyboard_check(vk_right);



//Handles gravity for objects in the gameworld
var move = right - left;
facing = move;


if(inControl){
	
	if(keyboard_check(vk_left)) mov_direction=-1;
	if(keyboard_check(vk_right)) mov_direction=1;
	
	hsp = move * walkSpeed;
	obj_monk.x = x;
	obj_monk.y = y;
}
else{hsp = 0}
vsp = vsp + grav;

//horizonal
if(place_meeting(x+hsp,y,obj_block)){
	while(!place_meeting(x+sign(hsp),y,obj_block)){
		x = x+sign(hsp);
	}
	hsp = 0;
	
}
x = x + hsp;



//vertical
if(place_meeting(x,y+vsp,obj_block)){
	while(!place_meeting(x,y+sign(vsp),obj_block)){
		y = y +sign(vsp);
	}
	vsp = 0;
	
}
y = y + vsp;