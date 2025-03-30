/// @description Insert description here
// You can write your code in this editor
if(rise){
	image_alpha+=random_range(0.005, 0.01)
}
else{
	image_alpha-=random_range(0.005, 0.01)
}
if(image_alpha <= 0.15){
	rise = true;
}
if(image_alpha >= 0.95){
	rise = false;
}
