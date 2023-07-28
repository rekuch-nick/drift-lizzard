draw_self();

if(hp <= hpMax){
	var w = clamp(28 * (hp / hpMax), 0, 28);
	//draw_rectangle_color(x, y + 28, x + w, y + 32, $EE1C24, $EE5F64, $7F0E13, $660B0F, false);
	draw_rectangle_color(x + 2, y + 28, x + w, y + 30, c_red, c_red, c_maroon, c_maroon, false);
}

//draw_text(x, y, mp);