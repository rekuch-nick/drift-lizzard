playerInput();
event_inherited();


if(ww.state == "play" || ww.state == "pause"){
	
	if(pressedNum){
		var n = real(pressedChar);
		if(n == 0){ n = 9; } else {
			n = n - 1;
		}
		
		if(actions[n] != noone){
			action = n;
		}
	}
	
	if(pressedChar == "Q"){ playerChangeAction(-1); }
	if(pressedChar == "E"){ playerChangeAction(1); }
	
}



if(ww.state == "play"){
	
	
	
	var readyForMoveInput = !ww.resolvingMove && ww.creaturesMoveIn < 1;
	var readyForMoveInput = x == xSpot * 32 && y == ySpot * 32 && ww.creaturesMoveIn < 1;
	
	if(readyForMoveInput && (xIn != 0 || yIn != 0) ){
		creatureClick(xSpot + xIn, ySpot + yIn);
		timePasses(1);
	} else if(readyForMoveInput && pressingSpace){
		timePasses(1);
	}
	
}