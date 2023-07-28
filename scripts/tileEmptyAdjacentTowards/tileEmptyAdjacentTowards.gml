function tileEmptyAdjacentTowards(x1, y1, x2, y2){
	
	var goodTiles = [];
	var index = 0;
	
	for(var a=x1-1; a<=x1+1; a++){ for(var b=y1-1; b<=y1+1; b++){
		
		
		if(a == x1 && b == y1){ continue; }
		if(!inBounds(a, b)){ continue; }
		
		if(ww.bmap[a, b] == noone && ww.mmap[a, b] == noone && disManhat(a, b, x2, y2) < disManhat(x1, y1, x2, y2) ){
			
			
			goodTiles[index] = {
				aaa: a,
				bbb: b,
			}
			index ++;
		}
		
	}}
	
	if(index == 0){ return noone; }
	
	return {
		a: goodTiles[irandom_range(0, index - 1)].aaa,
		b: goodTiles[irandom_range(0, index - 1)].bbb,
	};
	
	
}