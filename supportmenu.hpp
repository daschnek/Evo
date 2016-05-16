class SupportMenu {
	idd = 145;
	movingEnable = false;
	controlsBackground[] = {};
	controls[] = {"Background","ButtonControl", "OKButton", "Recruitlist", "TestButton1", "TestButton2", "TestButton3", "TestButton4", "TestButton5", "TestButton6", "TestButton7", "TestButton8", "TestButton9", "TestButton10"};
	
	class Background{
		idc = -1;
		type = 0;
		style = 1;
		moving = false;
		x = 0.2;
		y = 0.2;
		h = 0.5;
		w = 0.6;
		text = "";
		colorBackground[] = {0.333,0.420,0.184,0.8};
		colorBackgroundActive[] = {0.420,0.557,0.137,0.5};
		colorText[] = {1,1,1,1};
		default = false;
		font = "Zeppelin32";
		sizeEx = 0.035;
		
	};
	
	
	class ButtonControl {
		idc = -1;	//control id
		type = 1;	//type of control
		style = 2;
		moving = false;	//can you click and drag me?
		x = 0.5;	//horizontal position of button
		y = 0.65;	//vertical position of button
		h = 0.04;	//height of button
		w = 0.1;	//width of button
		font = "Zeppelin32";
		sizeEx = 0.035;
		action = "closeDialog 0;"	//Close the dialogue with a hint saying dialogue was closed
		text = "Close";
		default = false;
		colorText[] = {1,1,1,1};	//white, color of text
		colorFocused[] = {0.333,0.420,0.184,1};	//green, color while button is pushed?
		colorShadow[] = {0.8,0.8,0.8,1};	//dark grey, shadow color
		colorBorder[] = {0.5,0.5,0.5,1};	//grey, button border color
		colorBackground[] = {0.333,0.420,0.184,1}; //flashing color
		colorBackgroundActive[] = {0.333,0.420,0.184,1};	//green, background color while pushed?
		colorDisabled[] = {1,0,0,1}; //red, color when button is disabled
		colorBackgroundDisabled[] = {0.5,0.5,0.5,1};	//grey, background color when disabled
		bordersize = 0.005;
		offsetX = 0.005;
		offsetY = 0.005;
		offsetPressedX = 0.005;
		offsetPressedY = 0.005;
		soundEnter[] = {"",0,1};	//NoSound
		soundPush[] = {"",0,1};
		soundClick[] = {"",0,1};
		soundEscape[] = {"",0,1};
		blinkingPeriod = 0;	//disabled evil blinking effect
	};
	
	class OKButton : ButtonControl {
		
		text = "Select";
		x = 0.69;
		action = "";
	};
	
	class TestButton1 : ButtonControl {
		y = 0.55
		text = "Negro";
		action = "";
	};
	
	class TestButton2 : ButtonControl {
		y = 0.45;
		text = "Kike";
		action = "";
	};
	
	class TestButton3 : ButtonControl {
		y = 0.55;
		x = 0.69;
		text = "Faggot";
		action = "";
	};
	
	class TestButton4 : ButtonControl {
		y = 0.45;
		x = 0.69;
		text = "GBU";
		action = "_nigg = execVM ""supports\debugsupport.sqf"";";
	};
	
	class TestButton5 : ButtonControl {
		y = 0.35;
		x = 0.5;
		text = "Wetback";
		action = "";
	};
	
	class TestButton6 : ButtonControl {
		y = 0.35;
		x = 0.69;
		text = "Sand Nig";
		action = "";
	};
	
	class TestButton7 : ButtonControl {
		y = 0.55;
		x = 0.37;
		text = "Tranny";
		action = "";
	};
	
	class TestButton8 : ButtonControl {
		y = 0.45;
		x = 0.37;
		text = "Dyke";
		action = "";
	};
	
	class TestButton9 : ButtonControl {
		y = 0.55;
		x = 0.21;
		text = "Raghead";
		action = "";
	};
	
	class TestButton10 : ButtonControl {
		y = 0.45;
		x = 0.21;
		text = "Hitler";
		action = "";
	};
	
	
	class RecruitList {
		access = 0;
		idc = 146;
		type = 5;
		style = 0x00 + 0x10;
		default = false;
		canDrag = true;
		moving = false;
		blinkingPeriod = 0;
		x = 0.21;
		y = 0.21;
		h = 0.15;
		w = 0.2;
		colorText[] = {1,1,1,1};
		colorDisabled[] = {0.5,0.5,0.5,1};
		colorSelect[] = {1,0.549,0,1};
		colorBackground[] = {0,0,0,0.5};
		colorSelectBackground[] = {0,0,0,0.5};
		soundSelect[] = {"",0,1};
		font = "Zeppelin32";
		sizeEx = 0.035;
		rowHeight = 1.5 * GUI_GRID_CENTER_H;
		maxHistoryDelay = 1;
		
		class ListScrollBar {
			
			width = 0;
			height = 0;
			scrollSpeed = 0.01;
			
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
			border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
			thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)
			
			color[] = {1,1,1,1};
		};
		
		
		
	};
};