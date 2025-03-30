/// @description Insert description here
// You can write your code in this editor

if(turn == array_length(combatants)){
	turn = 0;
	obj_player.shield = 0;
}
if(global.gameState == states.combatStart){
	array_insert(combatants, 0, obj_player)
	global.gameState = states.combat;
	
}

if(global.gameState == states.combat){
	if(combatants[turn] == obj_player){
		global.gameState = states.playerTurn;
	}
}

if(global.gameState == states.playerTurn){

}

if(global.gameState == states.shoot){
	
}
if(global.gameState != states.normal){
	if(combatants[turn] == obj_player){
		timer = 0;
		if(!instance_exists(obj_button_shoot)){
			obj_player.ap = 10
			instance_create_layer(0,0,"UI",obj_button_shoot);
			instance_create_layer(0,0,"UI",obj_button_move);
			instance_create_layer(0,0,"UI",obj_button_shield);
			instance_create_layer(0,0,"UI",obj_button_end_turn);
		}
	}
}
if(global.gameState != states.normal){
	if(combatants[turn] != obj_player){
		instance_destroy(obj_button_move);
		instance_destroy(obj_button_shoot);
		instance_destroy(obj_button_shield);
		instance_destroy(obj_button_end_turn);
		global.gameState = states.enemyTurn;
		if(timer > 100){
			timer = 0;
			combatants[turn].shoot();
		}
	}
}
if(!instance_exists(obj_enemy)){
	room_goto(rm_win)
}
timer++;
