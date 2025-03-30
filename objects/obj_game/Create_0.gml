/// @description Insert description here
// You can write your code in this editor
randomize();
window_set_fullscreen(true)
global.gameState = states.normal;
combatants = [];
turn = 0;
timer = 0;
laser_accuracy = function(distance){
	return 90-(distance/85);
}

//stars
for(var i = 0; i < room_height; i++){
	for(var j = 0; j < room_width; j++){
		var rand = irandom_range(1,1500);
		if(rand == 12){
			var star = instance_create_layer(j,i,"bg",obj_star);
			rand = irandom_range(1,2)
			star.image_alpha = random_range(0.02, 0.98);
			if(rand == 1){
				star.rise = true;
			}
			else{
				star.rise = false;
			}
		}
	}
}
//each combatant will be put in an array. enemy squad will be in array
enum states{
	normal = 1,
	combat = 2,
	playerTurn = 3,
	enemyTurn = 4,
	combatStart = 5,
	shoot = 6,
	move = 7
	
}

laser = {
	damage:1,
	accuracy:laser_accuracy,
	obj:obj_laser,
	apcost:5
};
function addEnemies(enemies){
	for(var i = 0; i < array_length(enemies); i++){
		//array_resize(combatants, array_length(combatants))
		array_push(combatants, enemies[i]);
	}
}

function removeEnemy(enemy){
	for(var i = 0; i < array_length(combatants); i++){
		if(combatants[i].id == enemy){
			var ind = i
		}
	}
	array_delete(obj_game.combatants,ind,1)
}
function incrementturn(){
	if(turn == array_length(combatants) -1){
		turn = 0;
		obj_player.shield = 0;
	}
	else{
		turn++;
	}
}

