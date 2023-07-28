function effLineOfSparks(x1, y1, x2, y2, c){
	
	var a = (x1 * 32) + 16;
	var b = (y1 * 32) + 16;
	var aa = (x2 * 32) + 16;
	var bb = (y2 * 32) + 16;
	
	var angle = arctan2( bb - b, aa - a );
	var xs = cos(angle) * 10;
	var ys = sin(angle) * 10;
	
	while(point_distance(a, b, aa, bb) > 10){
		effectSpark(a, b, c);
		a += xs;
		b += ys;
	}
	

}