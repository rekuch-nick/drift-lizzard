function effectSpark(a, b, c, note){
	if(is_undefined(note)){ note = "wob"; }
	
	var e = instance_create_depth(a, b, ww.layerEff, objEffect);
	e.chip = c;
	e.fade = 0.05;
	if(note == "wob"){ e.wob = 2; }
}