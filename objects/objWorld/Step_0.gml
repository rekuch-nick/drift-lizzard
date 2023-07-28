if(rollStage){
	rollStage = false;
	worldGenCreatures();
	return;
}

if(state == "play"){
	
	
	if(creaturesMoveIn > 0){
		creaturesMoveIn --;
		if(creaturesMoveIn == 0){
			with(objCreature){
				if(id == pc){ continue; }
				
				if(hp < 1){
					ww.mmap[xSpot, ySpot] = noone;
					instance_destroy();
					continue;
				}
				
				for(var i=0; i<array_length(actions); i++){
					actCD[i] = clamp(actCD[i] - 1, 0, actCD[i]);
				}
				
				creatureTurn();
			}
		}
	}
	
	
	
	
	
	resolvingMove = false;
	creaturesMove();
	
	
	if(instance_number(objCreature) == 1){
		rollStage = true;
	}
	
}