function creatureAction(ii){
	
	var act = actions[ii];
	
	
	
	var s = spellBody(act);
	if(s != noone && s.cost > mp){ s = noone; }
	if(actCD[ii] > 0){ s = noone; }
	
	if(s != noone){
		
		
		
		var tar = noone;
		
		
		var xTar = xSpot; var yTar = ySpot;
		if(s.tar == target.closest){  
			var tar = creatureGetClosestAly(-aly, s.range);
			if(tar != noone){ xTar = tar.xSpot; yTar = tar.ySpot; }
		}
		
		var tiles = spellTiles(s, xTar, yTar);
		for(var i=0; i<array_length(tiles); i++){
			var a = tiles[i].a;
			var b = tiles[i].b;
			var m = ww.mmap[a, b];
			
			if(m != noone){
				if(m == id && !s.goOnSelf){ continue; }
				if(m.aly == aly && !s.goOnAly){ continue; }
				if(m.aly != aly && !s.goOnFoe){ continue; }
				
				
				if(s.isDamage){
					harm(id, m, s.might, s.element);
				}
			}
			
			if(m == noone && !s.goOnEmpty){ continue; }
			if(tar == noone && !s.goTargetless){ continue; }
			if(s.effSparkBlock != noone){ effectSparkBlock(a * 32, b * 32, s.effSparkBlock); }
			if(s.effSquare != noone){ effectSquare(a * 32, b * 32, s.effSquare); }
		}
		
		
		if(s.effLine != noone){ effLineOfSparks(xSpot, ySpot, xTar, yTar, s.effLine); }
		actCD[ii] = actCDMax[ii];
		spellUsed = true;
	}
	
	
	
	if(act == acts.spawn){
		var cords = tileEmptyAdjacent(xSpot, ySpot);
		if(cords != noone){
			var c = spawnList[ irandom_range(0, array_length(spawnList) - 1) ];
			
			instance_create_depth(cords.a * 32, cords.b * 32, depth, c);
			
			hp -= spawnCost;
			actCD[ii] = actCDMax[ii];
		}
		
	}
	
	
	
	

	
}