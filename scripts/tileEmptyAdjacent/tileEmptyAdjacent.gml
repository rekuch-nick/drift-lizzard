function tileEmptyAdjacent(aa, bb, range){
	if(is_undefined(range)){ range = 1; }
	var goodTiles = [];
	var index = 0;
	
	
	
	for(var a=aa-range; a<=aa+range; a++){ for(var b=bb-range; b<=bb+range; b++){
		
		
		if(a == aa && b == bb){ continue; }
		if(!inBounds(a, b)){ continue; }
		
		if(ww.bmap[a, b] == noone && ww.mmap[a, b] == noone){
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