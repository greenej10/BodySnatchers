/// @description Insert description here
// You can write your code in this editor
if(position_meeting(x,y+1,obj_block)){
	move_dir = -1;
}
if(position_meeting(x,y-1,obj_block)){
	move_dir = 1;
}

range_count++
y = y + (move_speed * move_dir);
if(range_count == range){
	move_dir*=(-1);
	range_count =0;
	}