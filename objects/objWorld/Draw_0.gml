


if(state == "play"){
	for(var a=0; a<19; a++){ for(var b=0; b<19; b++){
		draw_sprite_stretched(fmap[a, b], 0, a * 32, b * 32, 32, 32);
		
		if(ww.dmap[a, b] != noone){
			draw_sprite_stretched_ext(imgEffWarning, choose(0, 1), a * 32, b * 32, 32, 32, c_white, random_range(.2, .7) );
			draw_text_transformed(a*32+12, b*32+12, ww.dmap[a, b].cd, .6, .6, 0);
		}
	}}
}