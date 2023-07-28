


if(state == "play"){
	for(var a=0; a<19; a++){ for(var b=0; b<19; b++){
		draw_sprite_stretched(fmap[a, b], 0, a * 32, b * 32, 32, 32);
	}}
}