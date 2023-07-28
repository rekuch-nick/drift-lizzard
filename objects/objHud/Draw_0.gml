

draw_text(x + 10, 10, "HP " + string(pc.hp));

draw_text(x + 10, 40, "MP " + string(pc.mp));

for(var i=0; i<10; i++){
	if(i == pc.action){
		draw_set_alpha(.5);
		draw_rectangle_color(x + 5, 70 + (i * 30), x + 240, 88 + (i * 30), c_yellow, c_yellow, c_yellow, c_yellow, false);
		draw_set_alpha(1);
	}
	
	var s = string(i + 1) + " ";
	if(i == 9){ s = "0 "; }
	if(i > 9){ s = "  "; }
	
	//if(pc.actions[i] != noone){ s += spellName(pc.actions[i]); }
	if(pc.actions[i] != noone){ s += spellBody(pc.actions[i]).nam; }
	
	draw_text(x + 10, 70 + (i * 30), s);
}