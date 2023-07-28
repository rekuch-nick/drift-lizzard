function creatureCanEnter(a, b, creature){
	if(!inBounds(a, b)){ return false; }
	if(is_undefined(creature)){ creature = id; }
	with(creature){
		
		if(ww.bmap[a, b] != noone){ return false; }
		if(ww.mmap[a, b] != noone){ return false; }
		
	}
	return true;
}