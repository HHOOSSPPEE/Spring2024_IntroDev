global.grassRegenerator++;
if global.grassRegenerator<global.grassRegeneratorThreshold{
	exit;
}
var grassCountField1 = 0;
var grassCountField2 = 0;

// count grass amount in each field
with (obj_grass) {
    if (x >= global.field1X * global.tileSize && x < (global.field1X + global.fieldWidth) * global.tileSize) {
        grassCountField1++;
    } else if (x >= global.field2X * global.tileSize && x < (global.field2X + global.fieldWidth) * global.tileSize) {
        grassCountField2++;
    }
}

// regenerate grass
if (grassCountField1 < global.grassAmount) {
    var grassNeededField1 = (global.grassAmount) - grassCountField1;
    for (var i = 0; i < grassNeededField1; i++) {
        var grassLoc = global.field1X + irandom(global.fieldWidth - 1);
        // check if already grass in position
        if (!position_meeting(grassLoc * global.tileSize, global.groundHeight, obj_grass)) {
            instance_create_layer(grassLoc * global.tileSize, global.groundHeight, global.GrassLayer, obj_grass);
        } else {
            i--;
        }
    }
}

if (grassCountField2 < global.grassAmount) {
    var grassNeededField2 = (global.grassAmount) - grassCountField2;
    for (var j = 0; j < grassNeededField2; j++) {
        var grassLoc = global.field2X + irandom(global.fieldWidth - 1);
        // check if already grass in position
        if (!position_meeting(grassLoc * global.tileSize, global.groundHeight, obj_grass)) {
            instance_create_layer(grassLoc * global.tileSize, global.groundHeight, global.GrassLayer, obj_grass);
        } else {
            j--;
        }
    }
}
global.grassRegenerator = 0;