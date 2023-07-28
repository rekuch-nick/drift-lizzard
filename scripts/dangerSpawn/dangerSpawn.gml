function dangerSpawn(aa, bb, ccd, ddam, eelement, bbuff, bbuffChance, effect){
	if(!inBounds(aa, bb)){ return noone; }
	if(ww.dmap[aa, bb] != noone){ return noone; }
	
	ww.dmap[aa, bb] = {
		a: aa,
		b: bb,
		cd: ccd,
		dam: ddam,
		element: eelement,
		buff: bbuff,
		buffChance: bbuffChance,
		eff: effect,
	};
	
	
	
	
	return ww.dmap[aa, bb];
}