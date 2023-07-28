image_xscale = 2; image_yscale = 2;
depth = ww.layerMob;
xSpot = floor(x / 32);
ySpot = floor(y / 32);
if(ww.mmap[xSpot, ySpot] == noone){ ww.mmap[xSpot, ySpot] = id; }
driftSpeed = 8;




aly = -1;
moveHuntPlayer = false;
moveFleePlayer = false;
moveStayAtRange = false;
wanderTurns = 0;
wanderTurnsMax = 4;
pathDistance = 6;

turnSpeedGain = 75;
turnSpeed = 0;
moveDiagChance = 50;
canMoveDiag = true;

spawnList = [];
spawnCost = 0;



warnImage = noone;
warnMight = 0;
warnBurstTime = 10;
warnBuff = noone;
warnBuffChance = noone;
warnNumber = 1;
warnChance = 100;
warnTarget = "player close"
warnElement = ele.force;
warnRange = 10;





for(var i=0; i<ww.ACT_MAX; i++){
	actions[i] = noone;
	actCD[i] = 0;
	actCDMax[i] = 0;
	actCDChance[i] = 100;
}


hpMax = 20; hp = hpMax;
mp = 0; mpMax = 0;

for(var i=0; i<20; i++){
	resist[i] = 0;
}

