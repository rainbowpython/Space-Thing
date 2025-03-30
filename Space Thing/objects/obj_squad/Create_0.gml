/// @description Insert description here
// You can write your code in this editor


squad = [count];
for(var i = 0; i < count; i++){
	var temp = irandom_range(1, 2);
	var temp2 = irandom_range(1, 2);
	if(temp == 2){
		temp = -1;
	}
	if(temp2 == 2){
		temp2 = -1;
	}
	squad[i] = instance_create_layer(x + (i * 60 * temp), y + (i * 60 * temp2),"Instances", obj_enemy);
}

