/// @description Insert description here
// You can write your code in this editor

draw_self()
if(global.gameState == states.combat){
	draw_text(mouse_x+20, mouse_y-10, round(1+distance_to_point(mouse_x, mouse_y)/150))
}

if(global.gameState == states.shoot && place_meeting(mouse_x, mouse_y, obj_enemy)){
	draw_text(mouse_x+20, mouse_y-10, hitChance);
}
if(global.gameState == states.move){
	draw_text(mouse_x+20, mouse_y-10, moveCost);
}




