function spellTiles(s, xx, yy){
	
	var tiles = [];
	
	//tiles[0] = {a: xx, b: yy};
	for(var i=0; i<s.aoe; i++){
		var x1 = xx - i; var y1 = yy - i;
		var x2 = xx + i; var y2 = yy + i;
		
		
		for(var aa=x1; aa<=x2; aa++){ for(var bb=y1; bb<=y2; bb++){
			if(!inBounds(aa, bb)){ continue; }
			var ok = false;
			
			if(s.shape == area.square){ ok = true; }
			if(s.shape == area.ball){
				var d = disManhat(xx, yy, aa, bb);
				if(d <= s.aoe){ ok = true; }
			}
			if(s.shape == area.cross){
				if(aa == xx || bb == yy){ ok = true; }
			}
			
			if(ww.mmap[aa, bb] == noone && !s.goOnEmpty){ ok = false; }
			
			if(ok){
				tiles[array_length(tiles)] = { a: aa, b: bb };
			}
		}}
		
		
	}
	
	return tiles;
}