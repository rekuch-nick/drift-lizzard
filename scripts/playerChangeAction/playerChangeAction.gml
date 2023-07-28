function playerChangeAction(n){
	
	do {
		pc.action += n;
		
		if(pc.action < 0){ pc.action = array_length(pc.actions) - 1; }
		if(pc.action == array_length(pc.actions)){ pc.action = 0; }
		
	} until (pc.actions[pc.action] != noone);
	
	
}