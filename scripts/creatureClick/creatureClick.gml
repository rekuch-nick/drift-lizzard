function creatureClick(a, b){
	
	
	
	if(!inBounds(a, b)){ return; }
	if(creatureCanEnter(a, b)){
		creatureSetSpot(a, b);
	}
	
}