event_inherited();
image_xscale = 2; image_yscale = 2;
depth = ww.layerPlayer;
playerInput();


aly = 1;
turnSpeedGain = 100;
canMelee = false;

mp = 20;
mpMax = 20;

hp = 255;
hpMax = 255;


for(var i=0; i<10; i++){
	actions[i] = noone;
	actCD[i] = 0;
	actCDMax[i] = 0;
	actCDChance[i] = 100;
	actCost[i] = 0;
}

action = 0;
playerLearnSpell(acts.zap);
playerLearnSpell(acts.radiate);
playerLearnSpell(acts.fireball);

