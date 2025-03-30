/// @description Insert description here
// You can write your code in this editor
camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2);
if(x + camera_get_view_width(view_camera[0])/2 + (obj_player.x - x)/2 < room_width && x - camera_get_view_width(view_camera[0])/2 + (obj_player.x - x)/2 > 0){
	x += (obj_player.x - x)/2;
}
if(y + camera_get_view_height(view_camera[0])/2 + (obj_player.y - y)/2 < room_height && y - camera_get_view_height(view_camera[0])/2 + (obj_player.y - y)/2 > 0){
	y += (obj_player.y - y)/2
}


