if(distance_to_object(obj_player) < 250){
	agro = true;
}
if(hp == 0){
	obj_game.removeEnemy(self.id);
	instance_destroy();
}