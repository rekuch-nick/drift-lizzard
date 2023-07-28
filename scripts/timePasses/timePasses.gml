function timePasses(turnsToPass){
	if(is_undefined(turnsToPass)){ turnsToPass = 1; }
	for(var passingTurns = 0; passingTurns < turnsToPass; passingTurns ++){
		
		with(objPlayer){
			for(var i=0; i<array_length(actions); i++){
				actCD[i] = clamp(actCD[i] - 1, 0, actCD[i]);
			}
			
			spellUsed = false;
			creatureAction(action);
			if(!spellUsed){
				mp = clamp(mp + 1, 0, mpMax);
			}
		}
		
		ww.creaturesMoveIn = 10;
		
		
		
		
		
		
	}
}