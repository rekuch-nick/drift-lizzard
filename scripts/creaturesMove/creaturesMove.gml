function creaturesMove(){
	
	with(objCreature){
		
		if(x < xSpot * 32){ x += driftSpeed; ww.resolvingMove = true; }
		if(x > xSpot * 32){ x -= driftSpeed; ww.resolvingMove = true; }
		if(abs(x - xSpot) < driftSpeed){ x = xSpot * 32; }
	
		if(y < ySpot * 32){ y += driftSpeed; ww.resolvingMove = true; }
		if(y > ySpot * 32){ y -= driftSpeed; ww.resolvingMove = true; }
		if(abs(y - ySpot) < driftSpeed){ y = ySpot * 32; }
	}

}