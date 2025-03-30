/// @description Insert description here
// You can write your code in this editor
if(global.gameState == states.normal){
	
	if(keyboard_check(ord("A")) && vx > -10){
		ax = -sp;
	}
	else if(keyboard_check(ord("D")) && vx < 10){
		ax = sp;
	}
	else{
			ax = 0
			vx /= 1.1
	}
	if(keyboard_check(ord("W")) && vy > -10){
			ay = -sp;
	}
	else if(keyboard_check(ord("S")) && vy < 10){
			ay = sp;
	}
	else{
		vy /= 1.1
		ay = 0
	}

	vx += ax
	vy += ay

	x += vx;
	y += vy;
}

if(global.gameState == states.shoot){
//	target = instance_place();
	hitChance = round(weapons[selectedWeapon].accuracy(distance_to_point(mouse_x, mouse_y)));
	if(place_meeting(mouse_x, mouse_y, obj_enemy) && mouse_check_button_pressed(mb_left)){
		var target = instance_place(mouse_x, mouse_y, obj_enemy);
		if(irandom_range(1,100) < hitChance){
			target.hp -= weapons[selectedWeapon].damage;
			instance_create_layer(x, y, "Instances", obj_laser, {direction:point_direction(x,y,target.x,target.y), hit:target});
		}
		else{
			instance_create_layer(x, y, "Instances", obj_laser, {direction:point_direction(x,y,target.x,target.y), hit:noone});
		}
	}
}
if(global.gameState == states.move){
	moveCost = round(distance_to_point(mouse_x, mouse_y)/250) + 1;
}