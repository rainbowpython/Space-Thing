/// @description Insert description here
// You can write your code in this editor


if(mouse_check_button(mb_left) && mouse_x > bbox_left && 
	mouse_x < bbox_right && mouse_y < bbox_bottom && mouse_y > bbox_top
){
	action();
}

