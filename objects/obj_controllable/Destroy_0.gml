/// @description Insert description here
// You can write your code in this editor
//Give control back to player if died while in condtol
if(inControl){
obj_monk.inControl = true;
obj_monk.visible = 1;
}
	
instance_create_layer(origin_x,origin_y,layer,object_index);
