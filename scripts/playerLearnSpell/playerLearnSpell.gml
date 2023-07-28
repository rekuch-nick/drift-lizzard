function playerLearnSpell(s){
	
	ss = spellBody(s);
	
	var slot = -1;
	for(var i=0; i<array_length(pc.actions); i++){
		if(pc.actions[i] == noone){
			slot = i; break;
		}
	}
	if(slot == -1){ return; }
	
	pc.actions[slot] = s;
	pc.actCDMax[slot] = ss.cd;
	pc.actCost[slot] = ss.cost;
	
	
	
}