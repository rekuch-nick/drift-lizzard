state = "play";
room_speed = 30;
roomWidth = 608;
resolvingMove = true;
draw_set_font(fntPlain);
rollStage = false;

for(var a=0; a<19; a++){ for(var b=0; b<19; b++){
	fmap[a, b] = imgWater;
	bmap[a, b] = noone;
	mmap[a, b] = noone;
	dmap[a, b] = noone;
}}

creaturesMoveIn = 0;


ACT_MAX = 10;
layerPlayer = -900;
layerEff = -800;
layerMob = -500;

enum acts {
	melee,
	zap,
	spawn,
	radiate,
	fireball,
	warn,
}

enum ele {
	force,
	fire,
	water,
	shock,
	bio,
	light,
	shadow,
}

enum target {
	closest,
	feet,
	anyone,
}

enum area {
	ball,
	cross,
	square,
}


enum buf {
	burn,
	poison,
	slow,
	stun,
	shock,
	forzen,
}






instance_create_depth(0, 0, -9999, objScreenTitle);