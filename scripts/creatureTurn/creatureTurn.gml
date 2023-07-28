function creatureTurn(){
	
	
	
	
	turnSpeed += turnSpeedGain;
	while(turnSpeed >= 100){
		turnSpeed -= 100;
		canMoveDiag = irandom_range(0, 99) < moveDiagChance;
		
		
		var disToPlayer = abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot);
		var inMeleeRangeOfPlayer = disToPlayer == 1 || (disToPlayer == 2 && xSpot != pc.xSpot && ySpot != pc.ySpot);
		
		if(actions[0] == acts.melee && actCD[0] < 1 && inMeleeRangeOfPlayer){
			creatureBumpTowards(pc.xSpot, pc.ySpot);
			
		} else if(wanderTurns > 0){
			wanderTurns --;
			var tar = tileEmptyAdjacent(xSpot, ySpot);
			if(tar != noone){ creatureClick(tar.a, tar.b); }
			
		} else if(moveHuntPlayer){
			if(disToPlayer <= pathDistance){
				var tar = pathing(xSpot, ySpot, pc.xSpot, pc.ySpot);
				//if(tar == noone){ tar = pathing(xSpot, ySpot, pc.xSpot, pc.ySpot, false); }
			
				if(tar != noone){ creatureClick(tar.a, tar.b); } else { wanderTurns = wanderTurnsMax; }
			} else {
				var tar = tileEmptyAdjacentTowards(xSpot, ySpot, pc.xSpot, pc.ySpot);
				if(tar != noone){ creatureClick(tar.a, tar.b); }
			}
		} else if (moveFleePlayer){
			
			
			
		} 
		
		
		
			
		for(var i=0; i<ww.ACT_MAX; i++){
			if(actions[i] != noone && actCD[i] < 1){
				creatureAction(i);
			}
		}
			
		
		
		
		
		
		
		
		
		
		
		
		
		for(var i=0; i<ww.ACT_MAX; i++){
			if(actCD[i] > 0 && irandom_range(0, 99) < actCDChance[i]){
				actCD[i] --;
			}
		}
		
	}
	
}