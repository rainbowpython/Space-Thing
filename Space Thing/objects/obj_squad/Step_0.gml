/// @description Insert description here
// You can write your code in this editor

if(global.gameState == states.normal){
	for(var i = 0; i < count; i++){
		if(squad[i].agro){
			global.gameState = states.combatStart;
			obj_game.addEnemies(squad);
		}
	}
}


