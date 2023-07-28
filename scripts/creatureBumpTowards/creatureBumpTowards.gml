function creatureBumpTowards(a, b){
	var n = 16;
	
	if(a > xSpot){ x += n; }
	if(a < xSpot){ x -= n; }
	
	if(b > ySpot){ y += n; }
	if(b < ySpot){ y -= n; }
}