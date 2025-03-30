/// @description Insert description here


//to be ignored for now
//agroDetector = instance_create_layer(x,y,"Instances", obj_circle);

agro = false;
hp = 3;
shield = 0;
function shoot(){
	hitChance = round(obj_game.laser.accuracy(distance_to_point(obj_player.x, obj_player.y)));
		var target = obj_player;
		if(irandom_range(1,100) < hitChance){
			target.hp -= obj_game.laser.damage - target.shield;
			instance_create_layer(x, y, "Instances", obj_laser, {direction:point_direction(x,y,target.x,target.y), hit:target});
			instance_create_layer(target.x,target.y,"UI",obj_explode);
		}
		else{
			instance_create_layer(x, y, "Instances", obj_laser, {direction:point_direction(x,y,target.x,target.y), hit:noone});
		}
		obj_game.incrementturn()
}
