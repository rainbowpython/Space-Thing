/// @description Insert description here
// You can write your code in this editor
if(global.gameState == states.normal){
	instance_destroy(obj_thrust);
	if(keyboard_check(ord("A")) && vx > -10){
		ax = -sp;
		image_index = 1;
	}
	else if(keyboard_check(ord("D")) && vx < 10){
		ax = sp;
		image_index = 0;
	}
	else{
			ax = 0
			vx /= 1.1
	}
	if(keyboard_check(ord("W")) && vy > -10){
		ay = -sp;
		image_index = 2;
	}
	else if(keyboard_check(ord("S")) && vy < 10){
			ay = sp;
		image_index = 3;
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
if (hp == 0){
	room_goto(rm_game_over);
}


if(global.gameState == states.shoot){
//	target = instance_place();
	hitChance = round(weapons[selectedWeapon].accuracy(distance_to_point(mouse_x, mouse_y)));
	if(place_meeting(mouse_x, mouse_y, obj_enemy) && mouse_check_button_pressed(mb_left) && ap - weapons[selectedWeapon].apcost > -1){
		ap -= weapons[selectedWeapon].apcost
		var target = instance_place(mouse_x, mouse_y, obj_enemy);
		instance_create_layer(mouse_x, mouse_y, "UI", obj_target);
		
		if(irandom_range(1,100) < hitChance){
			target.hp -= weapons[selectedWeapon].damage;
			instance_create_layer(x, y, "Instances", weapons[selectedWeapon].obj, {direction:point_direction(x,y,target.x,target.y), hit:target});
			instance_create_layer(target.x,target.y,"UI",obj_explode)
		}
		else{
			instance_create_layer(x, y, "Instances", weapons[selectedWeapon].obj, {direction:point_direction(x,y,target.x,target.y), hit:noone});
		}
		
	}
}
if(global.gameState == states.move){
	moveCost = round(distance_to_point(mouse_x, mouse_y)/250) + 1;
	if(mouse_check_button_pressed(mb_left) && place_empty(mouse_x, mouse_y, obj_button)){
		movx = mouse_x;
		movy = mouse_y;
		moving = true;
	}
}
if(moving){
		if(distance_to_point(movx,movy) > 1){
			move_towards_point(movx,movy,10);
		}
		else{
			speed = 0
			moving = false;
		}
	}