function inBounds(a, b, r){
	if(is_undefined(r)){ r = 0; }
	return a >= 0 + r && b >= 0 + r && a < 19 - r && b < 19 - r;
}