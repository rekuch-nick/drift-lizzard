function effectSquare(a, b, c, note){
	if(is_undefined(note)){ note = "wob"; }
	
	var e = instance_create_depth(a, b, ww.layerEff, objEffect);
	e.square = c;
	e.fade = 0.1;
	if(note == "wob"){ e.wob = 1; }
}