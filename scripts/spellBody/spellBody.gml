function spellBody(n){
	
	var s = {
		nam: noone,
		needLoS: false,
		goTargetless: true,
		goOnEmpty: true,
		goOnFoe: true,
		goOnAly: false,
		goOnSelf: false,
		isDamage: true,
		aoe: 1,
		might: 1,
		cd: 0,
		cost: 0,
		element: ele.force,
		
		effLine: noone,
		effSparkBlock: noone,
		effSquare: noone,
		
	}
	
	if(n == acts.zap){
		s.nam = "Zap";
		s.tar = target.closest;
		s.range = 10;
		s.shape = area.ball;
		s.aoe = 1;
		s.goOnEmpty = false;
		s.might = 4;
		s.cd = 0;
		s.cost = 0;
		s.element = ele.shock;
		s.effLine = c_yellow;
		s.effSparkBlock = c_yellow;
	}
	
	if(n == acts.fireball){
		s.nam = "Fireball";
		s.tar = target.closest;
		s.range = 10;
		s.shape = area.ball;
		s.aoe = 3;
		s.goOnEmpty = true;
		s.goOnAly = true;
		s.goTargetless = false;
		s.might = 4;
		s.cd = 2;
		s.cost = 4;
		s.element = ele.fire;
		s.effLine = c_red;
		s.effSparkBlock = c_yellow;
		s.effSquare = c_red;
	}
	
	if(n == acts.radiate){
		s.nam = "Radiate";
		s.tar = target.feet;
		s.shape = area.square;
		s.aoe = 2;
		s.goOnEmpty = true;
		s.goOnSelf = false;
		s.might = 2;
		s.cd = 0;
		s.cost = 0;
		s.element = ele.light;
		s.effSparkBlock = noone;
		s.effSquare = c_white;
	}

	
	return s.nam == noone ? noone : s;
}