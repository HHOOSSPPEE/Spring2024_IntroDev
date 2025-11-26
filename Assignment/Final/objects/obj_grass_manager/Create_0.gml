global.grassRegenerator = 0;
global.grassRegeneratorThreshold = 300
global.GrassLayer = layer_create(50);
global.groundHeight = 1151;
global.tileSize = 32;
tileX = floor(room_width/global.tileSize);
tileY = floor(room_height/global.tileSize);

// parameters for grass fields
global.fieldWidth = floor(tileX/8); 
global.grassAmount = floor((global.fieldWidth/8)*7);

// generate fields
global.field1X = irandom(tileX - global.fieldWidth);
global.field2X = irandom(tileX - global.fieldWidth);
while (abs(global.field2X - global.field1X) < global.fieldWidth){// ensure a gap
	global.field2X = irandom(tileX - global.fieldWidth);
}


// generate grass 
for (var i = 0; i < global.fieldWidth; i++) {
	var random1 = irandom(9);
	if (random1 != 0){
		instance_create_layer((global.field1X + i) *global.tileSize, global.groundHeight, global.GrassLayer, obj_grass);
	}
	var random2 = irandom(9);
	if (random2 != 0){
		instance_create_layer((global.field2X + i) * global.tileSize, global.groundHeight, global.GrassLayer, obj_grass);
	}
}