function harm(c1, c2, might, element, eff, note){
	if(is_undefined(element)){ element = ele.force; }
	if(is_undefined(eff)){ eff = noone; }
	if(is_undefined(note)){ note = ""; }
	
	var dmg = 0;
	for(var i=0; i<might; i++){
		dmg += irandom_range(1, 6);
	}
	
	dmg = ceil(dmg * (1 - (c2.resist[element] / 100) ));
	
	
	c2.hp -= dmg;
	var e = instance_create_depth(c2.x + 16, c2.y, ww.layerEff, objEffect);
	e.txtSmall = "-" + string(dmg);
	e.ySpeed = -.5;
	
}