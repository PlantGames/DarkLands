/// mouse_event();

// Set the position to mouse position
x = mouse_x;
y = mouse_y;



switch (mode) {

	// Main Menu
	case 0:

		// New Game Button
		if (distance_to_point(133, 716) < 64) {
			background_index = choose(0, 1, 2);
			mode = 1;
		}
	
		// Save Load Screen Button
		if (distance_to_point(351, 716) < 64) {
			background_index = choose(0, 1, 2);
			mode = 2;
		}
		
		// Audio & Graphics Screen Button
		if (distance_to_point(673, 716) < 64) {
			background_index = choose(0, 1, 2);
			mode = 3;
		}
		
		// Quit Game Button
		if (distance_to_point(890, 716) < 64) game_end();
		
		break;









	// Character Creation
	case 1:
		
		// Start Game Button
		if (distance_to_point(133, 716) < 64) room_goto(rm_town1);
		
		// Back Button
		if (distance_to_point(890, 716) < 64) {
			background_index = choose(0, 1, 2);
			mode = 0;
		}
		
		// Class left arrow Button
		if(distance_to_point(232,144) < 48) {
		
			if(global.stats[0] > 0) global.stats[0] -= 1;
			else if (global.stats[0] == 0) global.stats[0] = 3;
			
		}
		
		// Class right arrow Button
		if(distance_to_point(480,144) < 64) {
		
			if (global.stats[0] < 3) global.stats[0] += 1;
			else if (global.stats[0] == 3) global.stats[0] = 0;
			
		}
		
		// Might left arrow Button
		if (distance_to_point(232, 208) < 64) {
		
			if (MightPoints >= 1) {
				MightPoints -= 1;
				points += 1;
			}
			
		}
		
		// Might right arrow Button
		if (distance_to_point(480, 208) < 64){
		
			if (points >= 1) {
				points -= 1;
				MightPoints += 1;
			}
			
		}
		
		// Vitality left arrow Button
		if(distance_to_point(232,272) < 64){
		
			if (VitalityPoints >= 1) {
				VitalityPoints -= 1;
				points += 1;
			}
			
		}
		
		// Vitality right arrow Button
		if (distance_to_point(480, 272) < 64) {
		
			if(points >= 1) {
				points -= 1;
				VitalityPoints += 1;
			}
			
		}
		
		// Resilience left arrow Button
		if(distance_to_point(232, 336) < 64){
		
			if (ResiliencePoints >= 1) {
				ResiliencePoints -= 1;
				points += 1;
			}
			
		}
		
		// Resilience right arrow Button
		if (distance_to_point(480, 336) < 64){
		
			if (points >= 1) {
				points -= 1;
				ResiliencePoints += 1;
			}
			
		}
		
		// Agility left arrow Button
		if (distance_to_point(232, 400) < 64){
		
			if (AgilityPoints >= 1) {
				AgilityPoints -= 1;
				points += 1;
			}
			
		}
		
		// Agility right arrow Button
		if (distance_to_point(480, 400) < 64){
		
			if (points >= 1) {
				points -= 1;
				AgilityPoints += 1;
			}
			
		}
		
		// Intellect left arrow Button
		if (distance_to_point(232, 464) < 64){
		
			if(IntellectPoints >= 1){
				IntellectPoints -= 1;
				points += 1;
			}
			
		}
			
		// Intellect right arrow Button
		if(distance_to_point(480, 464) < 64){
		
			if (points >= 1) {
				points -= 1;
				IntellectPoints += 1;
			}
			
		}
		
		// Charm left arrow button
		if (distance_to_point(232, 528) < 64) {
		
			if (CharmPoints >= 1) {
				CharmPoints -= 1;
				points += 1;
			}
			
		}
		
		// Charm right arrow button
		if (distance_to_point(480, 528) < 64){
		
			if (points >= 1) {
				points -= 1;
				CharmPoints += 1;
			}
			
		}
		
		// Luck left arrow button
		if (distance_to_point(232, 592) < 64) {
		
			if (LuckPoints >= 1) {
				LuckPoints -= 1;
				points += 1;
			}
			
		}
			
		// Luck right arrow button
		if (distance_to_point(480, 592) < 64) {
		
			if (points >= 1) {
				points -= 1;
				LuckPoints += 1;
			}
			
		}
	
		break;








	
	// Save & Load Screen
	case 2:
	
		// Save & Load Button
		if (distance_to_point(890, 716) < 64) {
			background_index = choose(0, 1, 2);
			mode = 0;
		}
	
		break;








	
	// Audio & Graphics Screen
	case 3:
		
		// Audio & Graphics Button
		if (distance_to_point(890, 716) < 64) {
			background_index = choose(0, 1, 2);
			mode = 0;
		}
		
		break;

}