/// @description Insert description here
// You can write your code in this editor

x = obj_camera.x - camera_get_view_width(view_camera[0])/2 + offsetx;
y = obj_camera.y - camera_get_view_height(view_camera[0])/2 + offsety;

if( mouse_x > bbox_left && 
	mouse_x < bbox_right && mouse_y < bbox_bottom && mouse_y > bbox_top){
	if(image_index == 0){
		image_index = 2;
	}
	if(mouse_check_button(mb_left)){
		action();
	}
}







