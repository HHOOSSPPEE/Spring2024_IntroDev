//bag properties
var padding = 10;
var bagX = camera_get_view_x(view_camera[0]) + padding;
var bagY = camera_get_view_y(view_camera[0]) + padding;
// Calculate the right and bottom edges of the bag sprite
var bagWidth = sprite_get_width(spr_bag);
var bagHeight = sprite_get_height(spr_bag);
var bagRight = bagX + bagWidth;
var bagBottom = bagY + bagHeight;

//inventory width and length
var inventoryWidth = 12 + rowlength * 36;
var inventoryHeight = 12 + collength * 36;

switch (gamestate){
	case GameState.Inventory:
		var x_pad = 40;
		var y_pad = 108;
		
		var x_pos = camera_get_view_x(view_camera[0]) + x_pad;
		var y_pos = camera_get_view_y(view_camera[0]) + y_pad

		//draw background
		draw_sprite_stretched(
			spr_inventory,
			0,
			x_pos,
			y_pos,
			inventoryWidth, //156
			inventoryHeight //84
		)
		//draw grid
		var currentNode = inventory.head;
		for(var i = 0; i < 8; i++){
			var xx = x_pos + 14 + (i mod rowlength) * 32;
			var yy = y_pos + 10 + (i div rowlength) * 32;
			
			draw_sprite(spr_slot, 0, xx, yy);
			
			//draw items onto the grid
			
			if (currentNode != undefined) {
			    // Extract the sprite from the current node
			    var spriteToDraw = currentNode.data;
    
			    // Assuming you have x and y coordinates where you want to draw the sprite
			    draw_sprite(spriteToDraw, 0, xx, yy);
    
			    // Move to the next node
			    currentNode = currentNode.next;
			}
		}
		
		
		// Drag and drop
		var inventoryRight = x_pos + inventoryWidth;
		var inventoryBottom = y_pos + inventoryHeight;
		
		//drag
		//mouse clicked and is within the rectangle
		if (mouse_check_button_pressed(mb_left) && (point_in_rectangle(mouse_x, mouse_y, x_pos, y_pos, inventoryRight, inventoryBottom))) {
			//loop through each slot in the grid
			for (var i = 0; i < 8; i++) {
				
				var xx = x_pos + 14 + (i mod rowlength) * 32;
				var yy = y_pos + 10 + (i div rowlength) * 32;
				
				// If the mouse click position is within a slot
				if (point_in_rectangle(mouse_x, mouse_y, xx, yy, xx + 32, yy + 32)) {
				    //set the sprite
					draggingSprite = inventory.searchItem(i).data;
				    // Record this slot's index as the start position of the dragged item
				    draggingIndex = i;
				    break;
				}
			}
		}
		//if dragging Index is not -1 then draw it
		if (draggingIndex != -1) {
		    var mouseX = mouse_x;
		    var mouseY = mouse_y;
		    // Draw the sprite at the mouse position. Adjust the offset as needed
		    draw_sprite(draggingSprite, 0, mouseX - 16, mouseY - 16); // Assuming the sprite's origin is at its center
		}
		//if drop it within the inventory box
		if (mouse_check_button_released(mb_left) && (point_in_rectangle(mouse_x, mouse_y, x_pos, y_pos, inventoryRight, inventoryBottom))) {
		    for (var i = 0; i < rowlength * collength; i++) {
		        var xx = x_pos + 14 + (i mod rowlength) * 32;
		        var yy = y_pos + 10 + (i div rowlength) * 32;
				// If the mouse release position is within a slot
		        if (point_in_rectangle(mouse_x, mouse_y, xx, yy, xx + 32, yy + 32)) {
					
		            // Record this slot's index as the drop position
		            droppingIndex = i;
					
		            // Swap items between draggingIndex and droppingIndex
		            inventory.swap(draggingIndex, droppingIndex);
					draggingIndex = -1; // Reset the dragging index
					draggingSprite = noone; // Reset the dragging sprite
		            break;
		        }
		    }
			draggingIndex = -1; // Reset the dragging index
			draggingSprite = noone; // Reset the dragging sprite
		}
		else if (mouse_check_button_released(mb_left) && !(point_in_rectangle(mouse_x, mouse_y, x_pos, y_pos, inventoryRight, inventoryBottom))) {
			inventory.remove(draggingIndex);
			
			switch (draggingSprite){
				case spr_watchA:
					obj_watchA.visible = true;
				break;
				case spr_watchB:
					obj_watchB.visible = true;
				break;
				case spr_watchC:
					obj_watchC.visible = true;
				break;
				case spr_watchD:
					obj_watchD.visible = true;
				break;
				case spr_watchE:
					obj_watchE.visible = true;
				break;
				case spr_watchF:
					obj_watchF.visible = true;
				break;
				case spr_watchG:
					obj_watchG.visible = true;
				break;
				case spr_watchH:
					obj_watchH.visible = true;
				break;
				case spr_watchI:
					obj_watchI.visible = true;
				break;
				case spr_watchJ:
					obj_watchJ.visible = true;
				break;
			}
			
			
			draggingIndex = -1; // Reset the dragging index
			draggingSprite = noone; // Reset the dragging sprite
		}
		
		
		
		// if click the bag again then close the bag
		// Check if the left mouse button was pressed this step
		if (mouse_check_button_pressed(mb_left)) {
		    // Check if the click is within the bounds of the bag sprite
		    if (mouse_x >= bagX && mouse_x <= bagRight && mouse_y >= bagY && mouse_y <= bagBottom) {
		        // Trigger the inventory window here
				obj_gm.gamestate = GameState.Walk; // This is just an example; implement according to your game's design
		    }
		}
		
		//draw the items onto the grid
		
	break;
	
	case GameState.Walk:
		
		// click and open the bag
		// Check if the left mouse button was pressed this step
		if (mouse_check_button_pressed(mb_left)) {
		    // Check if the click is within the bounds of the bag sprite
		    if (mouse_x >= bagX && mouse_x <= bagRight && mouse_y >= bagY && mouse_y <= bagBottom) {
		        // Trigger the inventory window here
				obj_gm.gamestate = GameState.Inventory; // This is just an example; implement according to your game's design
		    }
		}
		
	break;
	
	case GameState.Attack:
	break;
}


