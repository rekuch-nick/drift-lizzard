function creatureGetClosestAly(loyalty, maxRange){
	if(is_undefined(maxRange)){ maxRange = 49; }
	
	var bestDis = 50;
	
	with(objCreature){ 
		if(aly == loyalty){
			if(other.id != id){
				var d = disManhat(xSpot, ySpot, other.xSpot, other.ySpot);
				if(d < bestDis && d <= maxRange){ bestDis = d; }
			}
		}
	}
	
	
	if(bestDis == 50){ return noone; }
	
	var possible = [];
	var index = 0;
	
	with(objCreature){ 
		if(aly == loyalty){
			if(other.id != id){
				var d = disManhat(xSpot, ySpot, other.xSpot, other.ySpot);
				if(d == bestDis){ 
					possible[index] = id;
					index ++;
				}
			}
		}
	}
	
	
	
	return possible[irandom_range(0, index - 1)];

}