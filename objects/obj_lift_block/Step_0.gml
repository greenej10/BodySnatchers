/// @description Insert description here
// You can write your code in this editor
//Find cleaner way
if(liftedBy){
x = liftedBy.x ;
y = liftedBy.y - 60;
}



//These should be effected by gravity
else{
	vsp = vsp + 0.3;
if(place_meeting(x,y+vsp,obj_block)){
	while(!place_meeting(x,y+sign(vsp),obj_block)){
		y = y +sign(vsp);
	}
	vsp = 0;
	
}
y = y + vsp;
}