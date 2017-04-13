///Keybinds
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

///Movement
if(up){
	if(!place_meeting(x,y-spd,obj_solid)){
		y -= spd;
		facing = 0;
	}
}
if(down){
	if(!place_meeting(x,y+spd,obj_solid)){
		y += spd;
		facing = 1;
	}
}
if(left){
	if(!place_meeting(x-spd,y,obj_solid)){
		x -= spd;
		facing = 2;
	}
}
if(right){
	if(!place_meeting(x+spd,y,obj_solid)){
		x += spd;
		facing = 3;
		facing = 3;
	}
}

//Check to see if we stoped moving
if(!up && !left && !down && !right){
	moving = false;
}else{
	moving = true;
}