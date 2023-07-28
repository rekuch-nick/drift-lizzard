function worldGenCreatures(){
	with(objCreature){
		if(id == pc){ continue; }
		ww.mmap[xSpot, ySpot] = noone;
		instance_destroy();
	}
	
	
	
	
	
	instance_create_depth(17 * 32, 17 * 32, layerMob, objMobPortal);
	//instance_create_depth(17 * 32, 15 * 32, layerMob, objMobPortal);
	instance_create_depth(17 * 32, 13 * 32, layerMob, objMobPortal);

	instance_create_depth(17 * 32, 5 * 32, layerMob, objMobPortal);
	//instance_create_depth(17 * 32, 3 * 32, layerMob, objMobPortal);
	instance_create_depth(17 * 32, 1 * 32, layerMob, objMobPortal);
}