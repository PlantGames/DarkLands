/// mouse_event();

if (mouse_check_button_pressed(mb_left)) {
	x = mouse_x;
	y = mouse_y;

	if(mode == 0){
		if(distance_to_point(133,716) < 64){
			num1 = random(2);
			num1 = round(num1);
			mode = 1;
		}else if(distance_to_point(351,716) < 64){
			num1 = random(2);
			num1 = round(num1);
			mode = 2;
		}else if(distance_to_point(673,716) < 64){
			num1 = random(2);
			num1 = round(num1);
			mode = 3;
			//Exit Button
		}else if(distance_to_point(890,716) < 64){
			game_end();
		}
		
	}else if(mode == 2){
		if(distance_to_point(890,716) < 64){
			num1 = random(2);
			num1 = round(num1);
			mode = 0;
		}
		
	}else if(mode == 3){
		if(distance_to_point(890,716) < 64){
			num1 = random(2);
			num1 = round(num1);
			mode = 0;
		}
	
	}else if(mode == 1){
		//Start button
		if(distance_to_point(133,716) < 64){
			room_goto(rm_town1);
		//Back Button
		} else if(distance_to_point(890,716) < 64){
			num1 = random(2);
			num1 = round(num1);
			mode = 0;
		//Class left arrow
		}else if(distance_to_point(232,144) < 48){
			if(global.stats[0] > 0){
				global.stats[0] -= 1;
			} else if(global.stats[0] == 0){
				global.stats[0] = 3;
			}
		//Class right arrow
		}else if(distance_to_point(480,144) < 64){
			if(global.stats[0] < 3){
				global.stats[0] += 1;
			} else if(global.stats[0] == 3){
				global.stats[0] = 0;
			}
		//Might Left Arrow
		}else if(distance_to_point(232,208) < 64){
			if(MightPoints >= 1){
				MightPoints -= 1;
				points += 1;
			}
		//Might Right Arrow
		}else if(distance_to_point(480,208) < 64){
			if(points >= 1){
				points -= 1;
				MightPoints += 1;
			}
		//Vitality Left Arrow
		}else if(distance_to_point(232,272) < 64){
			if(VitalityPoints >= 1){
				VitalityPoints -= 1;
				points += 1;
			}
		//Vitality Right Arrow
		}else if(distance_to_point(480,272) < 64){
			if(points >= 1){
				points -= 1;
				VitalityPoints += 1;
			}
		//Resilience Left Arrow
		}else if(distance_to_point(232,336) < 64){
			if(ResiliencePoints >= 1){
				ResiliencePoints -= 1;
				points += 1;
			}
		//Resilience Right Arrow
		}else if(distance_to_point(480,336) < 64){
			if(points >= 1){
				points -= 1;
				ResiliencePoints += 1;
			}
		//Agility Left Arrow
		}else if(distance_to_point(232,400) < 64){
			if(AgilityPoints >= 1){
				AgilityPoints -= 1;
				points += 1;
			}
		//Agility Right Arrow
		}else if(distance_to_point(480,400) < 64){
			if(points >= 1){
				points -= 1;
				AgilityPoints += 1;
			}
		//Intellect Left Arrow
		}else if(distance_to_point(232,464) < 64){
			if(IntellectPoints >= 1){
				IntellectPoints -= 1;
				points += 1;
			}
		//Intellect Right Arrow
		}else if(distance_to_point(480,464) < 64){
			if(points >= 1){
				points -= 1;
				IntellectPoints += 1;
			}
		//Charm Left Arrow
		}else if(distance_to_point(232,528) < 64){
			if(CharmPoints >= 1){
				CharmPoints -= 1;
				points += 1;
			}
		//Charm Right Arrow
		}else if(distance_to_point(480,528) < 64){
			if(points >= 1){
				points -= 1;
				CharmPoints += 1;
			}
		//Luck Left Arrow
		}else if(distance_to_point(232,592) < 64){
			if(LuckPoints >= 1){
				LuckPoints -= 1;
				points += 1;
			}
		//Luck Right Arrow
		}else if(distance_to_point(480,592) < 64){
			if(points >= 1){
				points -= 1;
				LuckPoints += 1;
			}
		}			
	}
	
}