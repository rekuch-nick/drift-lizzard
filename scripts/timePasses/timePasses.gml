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
		
		
		
		
		for(var a=0; a<19; a++){ for(var b=0; b<19; b++){
			var d = ww.dmap[a, b];
			if(d != noone){
				d.cd --;
				if(d.cd < 1){
					instance_create_depth(a*32, b*32, ww.layerEff, d.eff);
					var c = ww.mmap[a, b];
					var bb = irandom_range(0, 99) < d.buffChance ? d.buff : noone;
					if(c != noone){ harm(noone, c, d.dam, d.element, bb); }
					ww.dmap[a, b] = noone;
				}
			}
		}}
		
	}
}