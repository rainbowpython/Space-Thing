/// @description Insert description here
// You can write your code in this editor

if(global.gameState != states.normal){
	for(var i = 0; i < array_length(combatants); i++){
		draw_sprite(combatants[i].sprite_index, 0, (window_get_width()/2) - array_length(combatants)*78/2 + i*78 + 78/2, 70);
		if(turn == i){
			draw_sprite(spr_energy, 0, (window_get_width()/2) - array_length(combatants)*78/2 + i*78 + 78/2, 120);
		}
	}
	//if(global.gameState == states.playerTurn || global.gameState == states.shoot || global.gameState == states.move){
	if(combatants[turn] == obj_player){
		for(var i = 0; i < obj_player.ap; i++){
			draw_sprite(spr_energy, 0, (window_get_width()/2) - obj_player.ap*100/2 + i*100 + 100/2, window_get_height() - 70);
		}
	}
}

if(global.gameState == states.playerTurn){
	
}
if(global.gameState == states.shoot){
	
}
