/// menu_draw();

// Set the font
draw_set_font(fnt_gui_small);

// Centre the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

// Set the default text color to black
draw_set_color(c_black);

//Choose a background based off of num1
draw_sprite(spr_backgrounds, background_index, 0, 0);

// Draw the different menus according to the current mode
switch (mode) {

	// Main Menu
	case 0:
		
		// Draw the GUI bars
		var xpos = 88, ypos = 688, var x_offset = 219, var spr = spr_gui_bar;
		draw_sprite(spr, 0, xpos, ypos);
		draw_sprite(spr, 0, xpos + x_offset, ypos);
		draw_sprite(spr, 0, xpos + (x_offset * 2), ypos);
		draw_sprite(spr, 0, xpos + (x_offset * 3), ypos);
		
		// Draw the MainMenu text
		var xpos = 173, ypos = 716;
		draw_text(xpos, ypos, "NewGame");
		draw_text(xpos + 218, ypos, "LoadGame");
		draw_text(xpos + 440, ypos, "Options");
		draw_text(xpos + 657, ypos, "Quit");
		
		// Draw the Game TitleScreen
		draw_set_font(font_large);
		draw_text(room_width / 2, 64, "D A R K    L A N D S");
		
		break;
	
	
	// Character Creation	
	case 1:
		
		// Draw the GUI bars
		var xpos = 805, var ypos = 688, var spr = spr_gui_bar;
		draw_sprite(spr, 0, xpos, ypos);
		draw_text(xpos + 85, ypos + 28, "Back");
		draw_sprite(spr, 0, xpos - 757, ypos);
		draw_text(xpos - 672, ypos + 28, "Start");
		
		// Draw the Character Creation TitleScreen
		draw_set_font(font_large);
		draw_text(room_width / 2, 60, "CHARACTER    CREATION");
		
		// Draw the character stats
		var xpos = 96, var ypos = 156, var y_offset = 64;
		
		draw_set_font(font_medium);
		
		draw_text(xpos, ypos, "Class:");
		draw_text(xpos, ypos + y_offset, "Might:");
		draw_text(xpos, ypos + (y_offset * 2), "Vitality:");
		draw_text(xpos, ypos + (y_offset * 3), "Resilience:");
		draw_text(xpos, ypos + (y_offset * 4), "Agility:");
		draw_text(xpos, ypos + (y_offset * 5), "Intellect:");
		draw_text(xpos, ypos + (y_offset * 6), "Charm:");
		draw_text(xpos, ypos + (y_offset * 7), "Luck:");
		
		draw_text(xpos + 576, ypos, "Points:");
		draw_text(xpos + 672, ypos, points);
		
		// Draw the stats allocation buttons
		// Class 
		var xpos = 232, var ypos = 144;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
	
		// Might
		var ypos = 208;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 65, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, MightPoints);
	
		// Vit
		var ypos = 272;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, VitalityPoints);
	
		// Res
		var ypos = 336;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, ResiliencePoints);
	
		// Agi
		var ypos = 400;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, AgilityPoints);
	
		// Int
		var ypos = 464;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, IntellectPoints);
		
		// Charm
		var ypos = 528;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, CharmPoints);
		
		// Luck
		var ypos = 592;
		draw_sprite(arrow_button, 0, xpos, ypos);
		draw_sprite(spr_gui_bar, 0, xpos + 64, ypos - 12);
		draw_sprite(arrow_button, 1, xpos + 248, ypos);
		
		draw_text(xpos + 153, ypos + 16, LuckPoints);

		// Draw the class name
		var xpos = 385, var ypos = 160;
		
		draw_set_font(font_small);
		
		switch (global.stats[0]) {
		
			// Draw the Knight text
			case 0:
				draw_text(xpos, ypos, "Knight");
				break;
			
			// Draw the Warrior text
			case 1:
				draw_text(xpos, ypos, "Warrior");
				break;
				
			// Draw the Ranger text	
			case 2:
				draw_text(xpos, ypos, "Ranger");
				break;
				
			// Draw the Thief text	
			case 3:
				draw_text(xpos, ypos, "Thief");
				break;
		
		}

		break;
	
	// Saving Loading	
	case 2:
		var spr = spr_gui_bar, var xpos = 805, ypos = 688;
		
		draw_sprite(spr, 0, xpos, ypos);
		draw_text(xpos + 85, ypos + 28, "Back");
	
		draw_set_font(font_medium);
		draw_text(room_width / 2, 32, "Saving And Loading Systems Are Not Added Yet.");
	
		break;
		
	// Audio & Graphics
	case 3:
		var spr = spr_gui_bar, var xpos = 805, ypos = 688;
		
		draw_sprite(spr_gui_bar, 0, xpos, ypos);
		draw_text(xpos + 85, ypos + 28, "Back");
	
		draw_set_font(font_medium);
		draw_text(room_width / 2, 32, "Audio And Graphical Options Not Added Yet.");
	
		break;

}