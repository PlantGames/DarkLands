// Randomize the game seed
randomize();

// Choose the background index at random
background_index = choose(0, 1, 2);

/* Setup the mode variable
Mode 0) Main Menu 
Mode 1) Character Creation
Mode 2) Save Load Screen
Mode 3) Audio & Graphics Screen */
mode = 0;

// Set the fonts
font_small = fnt_gui_small;
font_medium = fnt_gui_medium;
font_large = fnt_gui_large;

// Set the button sprites
arrow_button = spr_btn_arrows;

// Initialize a couple of variables
global.stats[0] = 0;
points = 12;
MightPoints = 0;
VitalityPoints = 0;
ResiliencePoints = 0;
AgilityPoints = 0;
IntellectPoints = 0;
CharmPoints = 0;
LuckPoints = 0;