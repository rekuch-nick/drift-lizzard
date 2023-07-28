function creatureSetSpot(a, b, creature){
	if(!inBounds(a, b)){ return false; }
	if(is_undefined(creature)){ creature = id; }
	with(creature){
		
		var old = ww.mmap[a, b];
		
		ww.mmap[a, b] = id;
		
		ww.mmap[xSpot, ySpot] = old;
		
		if(old != noone){
			old.xSpot = xSpot;
			old.ySpot = ySpot;
		}
		
		xSpot = a;
		ySpot = b;
		
	}
}