/// @description Insert description here
// You can write your code in this editor


if(global.gameState == states.combatStart){
	array_insert(combatants, 0, obj_player)
	global.gameState = states.combat;
	turn = 0;
}

if(global.gameState == states.combat){
	if(combatants[turn] == obj_player){
		global.gameState = states.playerTurn;
	}
}

if(global.gameState == states.playerTurn){
	instance_create_layer(0,0,"UI",obj_button_shoot);
	instance_create_layer(0,0,"UI",obj_button_move);
}

if(global.gameState == states.shoot){
	
}


