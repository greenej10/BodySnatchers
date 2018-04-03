/// @description Insert description here
// You can write your code in this editor
/// @description draws health and alarm timer

//Draw the monks health and everything

if(end_time = false){
with(obj_monk)
{	
	for(i = 0;i<health;i++)
	{
		draw_sprite(spr_heart,0,i*30 + 20,20);
	}
	
	draw_set_color(c_white);
	draw_text(40,50,(alarm_get(0)/100));
	draw_text(40,70,(current_time/1000));
	if(dead){
	draw_sprite(spr_death,0,1024/2,768/2);
	draw_sprite(spr_replay_level_btn,0,((1024/2) + 250),(768/2) +120);
	draw_sprite(spr_back_btn,0,((1024/2)-250),(768/2) +120);
	//instance_create_layer(200,(768/2) +120,layer,obj_back_btn);
	
	//instance_create_layer(((1024/2) + 200),(768/2) +120,layer,obj_replay_level_btn);
	}
}	
if(gamePaused){
	draw_sprite(spr_pause,0,1024/2,768/2);
	
}
}
else{
		draw_text(room_width/2,room_height/2,"LEVEL COMPLETE!");
		draw_text(40,70,(end_time/1000) );
		//instance_create_layer( obj_monk.x, obj_monk.y,layer,obj_next_level_btn);
		draw_sprite(spr_next_level_btn,0,((1024/2) + 250),(768/2) +120);
		draw_sprite(spr_replay_level_btn,0,((1024/2)-250),(768/2) +120);
		//instance_create_layer(room_width/2 + 50,(room_height/2) +60,layer,obj_replay_level_btn);
	}
	