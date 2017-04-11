//Change Font And Align The Text
draw_set_font(fnt_gui_small);

draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_set_color(c_black);

//Choose a backgorund based off of num1
if(num1 == 0){
	draw_sprite(spr_backgrounds,0,0,0);
}else if(num1 == 1){
	draw_sprite(spr_backgrounds,1,0,0);
}else if(num1 == 2){
	draw_sprite(spr_backgrounds,2,0,0);
}

//Draw shit depending on what "mode" we are in
//MainMenu
if(mode == 0){
	draw_sprite(spr_gui_bar,0,48,688);
	draw_sprite(spr_gui_bar,0,267,688);
	draw_sprite(spr_gui_bar,0,586,688);
	draw_sprite(spr_gui_bar,0,805,688);
	
	draw_text(133,716,"NewGame");
	draw_text(351,716,"LoadGame");
	draw_text(673,716,"Options");
	draw_text(890,716,"Quit");
	
	draw_set_font(fnt_gui_large);
	draw_text(room_width/2,64,"D A R K    L A N D S");
	
//Newgame
}else if(mode == 1){
	draw_sprite(spr_gui_bar,0,805,688);
	draw_text(890,716,"Back");
	draw_sprite(spr_gui_bar,0,48,688);
	draw_text(133,716,"Start");
	
	draw_set_font(fnt_gui_large);
	draw_text(room_width/2,60,"CHARACTER    CREATION");
	
	draw_set_font(fnt_gui_medium);
	draw_text(96,156,"Class:");
	draw_text(96,220,"Might:");
	draw_text(96,284,"Vitality:");
	draw_text(96,348,"Resilience:");
	draw_text(96,412,"Agility:");
	draw_text(96,476,"Intellect:");
	draw_text(96,540,"Charm:");
	draw_text(96,604,"Luck:");
	
	draw_text(672,156,"Points:");
	draw_text(768,156,points);
	
	//Class 
	draw_sprite(spr_btn_arrows,0,232,144);
	draw_sprite(spr_gui_bar,0,296,132);
	draw_sprite(spr_btn_arrows,1,480,144);
	
	//Might
	draw_sprite(spr_btn_arrows,0,232,208);
	draw_sprite(spr_gui_bar,0,296,196);
	draw_sprite(spr_btn_arrows,1,480,208);
	
	//Vit
	draw_sprite(spr_btn_arrows,0,232,272);
	draw_sprite(spr_gui_bar,0,296,260);
	draw_sprite(spr_btn_arrows,1,480,272);
	
	//Res
	draw_sprite(spr_btn_arrows,0,232,336);
	draw_sprite(spr_gui_bar,0,296,324);
	draw_sprite(spr_btn_arrows,1,480,336);
	
	//Agi
	draw_sprite(spr_btn_arrows,0,232,400);
	draw_sprite(spr_gui_bar,0,296,388);
	draw_sprite(spr_btn_arrows,1,480,400);
	
	//Int
	draw_sprite(spr_btn_arrows,0,232,464);
	draw_sprite(spr_gui_bar,0,296,452);
	draw_sprite(spr_btn_arrows,1,480,464);
	
	draw_sprite(spr_btn_arrows,0,232,528);
	draw_sprite(spr_gui_bar,0,296,516);
	draw_sprite(spr_btn_arrows,1,480,528);
	
	draw_sprite(spr_btn_arrows,0,232,592);
	draw_sprite(spr_gui_bar,0,296,580);
	draw_sprite(spr_btn_arrows,1,480,592);
	
	draw_set_font(fnt_gui_small);

	if(global.stats[0] == 0){
		draw_text(385,160,"Knight");
	}else if(global.stats[0] == 1){
		draw_text(385,160,"Warrior");
	}else if(global.stats[0] == 2){
		draw_text(385,160,"Ranger");
	}else if(global.stats[0] == 3){
		draw_text(385,160,"Theif");
	}
	
	draw_text(385,224,MightPoints);
	draw_text(385,288,VitalityPoints);
	draw_text(385,352,ResiliencePoints);
	draw_text(385,416,AgilityPoints);
	draw_text(385,480,IntellectPoints);
	draw_text(385,544,CharmPoints);
	draw_text(385,608,LuckPoints);
//Loadgame
}else if(mode == 2){
	draw_sprite(spr_gui_bar,0,805,688);
	draw_text(890,716,"Back");
	
	draw_set_font(fnt_gui_medium);
	draw_text(room_width/2,32,"Saving And Loading Systems Are Not Added Yet.");
//Options
}else if(mode == 3){
	draw_sprite(spr_gui_bar,0,805,688);
	draw_text(890,716,"Back");
	
	draw_set_font(fnt_gui_medium);
	draw_text(room_width/2,32,"Audio And Graphical Options Not Added Yet.");
	
}
//Mouse event handler
if(mouse_check_button_pressed(mb_left)){
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