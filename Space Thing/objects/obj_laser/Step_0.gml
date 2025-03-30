/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y,hit)){
	image_xscale += 8;
}
else{
	image_alpha -= 0.1;
}
if(image_alpha < 0){
	instance_destroy();
}
